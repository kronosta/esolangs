;;===============================================================================
;; MADE BY KAVEH YOUSEFI
;; https://github.com/KavehYousefi/Esoteric-programming-languages/tree/main/SOAP/SOAP_001
;;
;; MODIFICATIONS AND FIXES MADE BY BOUNDEDBEANS
;; 
;; This is in one file so it can be run on tio.run.
;;===============================================================================

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; This file serves in the declaration of the globally significant
;; types.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Declaration of types.                                        -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deftype list-of (&optional (element-type T))
  "The ``list-of'' type defines a list of zero or more elements, each
   member of which conforms to the ELEMENT-TYPE, defaulting to the
   comprehensive ``T''."
  (let ((predicate (gensym)))
    (declare (type symbol predicate))
    (setf (symbol-function predicate)
      #'(lambda (candidate)
          (declare (type T candidate))
          (and
            (listp candidate)
            (every
              #'(lambda (element)
                  (declare (type T element))
                  (typep element element-type))
              (the list candidate)))))
    `(satisfies ,predicate)))

;;; -------------------------------------------------------

(deftype hash-table-of (&optional (key-type T) (value-type T))
  "The ``hash-table-of'' type defines a hash table of zero or more
   entries, each key of which conforms to the KEY-TYPE and associates
   with a value of the VALUE-TYPE, both defaulting to the comprehensive
   ``T''."
  (let ((predicate (gensym)))
    (declare (type symbol predicate))
    (setf (symbol-function predicate)
      #'(lambda (candidate)
          (declare (type T candidate))
          (and
            (hash-table-p candidate)
            (loop
              for key
                of-type T
                being the hash-keys in (the hash-table candidate)
              using
                (hash-value value)
              always
                (and (typep key key-type)
                     (typep value value-type))))))
    `(satisfies ,predicate)))

;;; -------------------------------------------------------

(deftype attribute-map ()
  "The ``attribute-map'' type defines a collection of node attributes in
   the form of a hash table mapping which associated keyword symbol
   attribute names to arbitrary values."
  '(hash-table-of keyword T))

;;; -------------------------------------------------------

(deftype attribute-list ()
  "The ``attribute-list'' type defines a list of node attributes in
   terms of a property list, or plist, with each attribute name (key or
   indicator) immediately succeeded by its associated attribute value
   (property value), the former of which must be a keyword symbol,
   whereas the latter may assume the generic type ``T''."
  (let ((predicate (gensym)))
    (setf (symbol-function predicate)
      #'(lambda (candidate)
          (declare (type T candidate))
          (and
            (listp candidate)
            (evenp (length (the list candidate)))
            (loop
              for (indicator value)
                of-type (T T)
                on      (the list candidate)
                by      #'cddr
              always
                (and (typep indicator 'keyword)
                     (typep value     T))))))
    `(satisfies ,predicate)))

;;; -------------------------------------------------------

(deftype node-list ()
  "The ``node-list'' type defines a list of zero or more ``Node''
   objects."
  '(list-of Node))

;;; -------------------------------------------------------

(deftype set-operator ()
  "The ``set-operator'' type enumerates the recognized binary set
   operations."
  '(member
    :union
    :intersection
    :left-difference
    :right-difference))

;;; -------------------------------------------------------

(deftype set-relationship ()
  "The ``set-relationship'' type enumerates the recognized relationship
   betwixt two sets, most commonly employed in the indagation of a
   loop's continuation predicate."
  '(member
    :subset
    :proper-subset
    :not-subset
    :superset
    :proper-superset
    :not-superset
    :equal))

;;; -------------------------------------------------------

(deftype destination ()
  "The ``destination'' type defines a sink for output operations,
   enumerating, among others, the functions ``format'' and
   ``write-char''."
  '(or null (eql T) stream string))

;;; -------------------------------------------------------

(deftype natural-number ()
  "The ``natural-number'' type defines a positive integer with no upper
   bourne, that is, a commorant of the range [1, +infinity], most
   commonly employed in the context of set members."
  '(integer 1 *))

;;; -------------------------------------------------------

(deftype number-list ()
  "The ``number-list'' type defines a list of zero or more natural
   numbers, that is, positive integers."
  '(list-of natural-number))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; This file comprehends the definition of the "Token" class and its
;; appertaining operations, serving to represent a significant object
;; extracted from a piece of SOAP source code.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of class "Token".                             -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstruct (Token
  (:constructor make-token (type value)))
  "The ``Token'' class serves as an encapsulation of a significant
   portion of SOAP code."
  (type  (error "Missing token type.") :type keyword)
  (value NIL                           :type T))

;;; -------------------------------------------------------

(defun token-type-p (token expected-type)
  "Checks whether the TOKEN conforms to the EXPECTED-TYPE, returning on
   confirmation a ``boolean'' value of ``T'', otherwise ``NIL''."
  (declare (type Token   token))
  (declare (type keyword expected-type))
  (the boolean
    (not (null
      (eq (token-type token) expected-type)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; This file comprehends the "Lexer" class, its operations, and the
;; logically independent character handling adminicula, serving in the
;; extraction of tokens from a piece of SOAP source code.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of character operations.                      -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun whitespace-character-p (candidate)
  "Checks whether the CANDIDATE represents a whitespace, returning on
   confirmation a ``boolean'' value of ``T'', otherwise ``NIL''."
  (declare (type character candidate))
  (the boolean
    (not (null
      (member candidate '(#\Newline #\Space #\Tab) :test #'char=)))))

;;; -------------------------------------------------------

(defun ignorable-character-p (candidate)
  "Determines whether the CANDIDATE represents an ignorable character,
   which is subsequently tolerated but skipped by during lexical
   analyzation process, returning on confirmation a ``boolean'' value of
   ``T'', otherwise ``NIL''."
  (declare (type character candidate))
  (the boolean
    (not (null
      (member (char-code candidate) '(0 13) :test #'=)))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of class "Lexer".                             -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstruct (Lexer
  (:constructor make-lexer (source
                            &aux (character
                                   (when (array-in-bounds-p source 0)
                                     (char source 0))))))
  "The ``Lexer'' class establishes a unit endowed with the competence to
   recognize and extract from a piece of SOAP source code the pertinent
   objects and returning these as ``Token'' instances."
  (source    (error "Missing lexer source.") :type string)
  (position  0                               :type fixnum)
  (character NIL                             :type (or null character)))

;;; -------------------------------------------------------

(defmacro with-lexer ((lexer) &body body)
  "Evaluates the LEXER, binds its slots ``source'', ``position'' and
   ``character'' to eponymous local symbol macros for general access,
   evaluates the BODY forms, and returns the last processed form's
   results.
   ---
   As an additional service, two local functions are being defined for
   enhanced convenience:
   
     ------------------------------------------------------------------
     Local function         | Effect
     -----------------------+------------------------------------------
     advance ()             | Moves the LEXER's position cursor to the
                            | next character in its source.
     ..................................................................
     character-equals-p (c) | Checks whether the character C equals the
                            | LEXER's current character and returns a
                            | ``boolean'' result.
     ------------------------------------------------------------------"
  (let ((evaluated-lexer (gensym)))
    (declare (type symbol evaluated-lexer))
    `(let ((,evaluated-lexer ,lexer))
       (declare (type Lexer ,evaluated-lexer))
       (declare (ignorable  ,evaluated-lexer))
       (symbol-macrolet
           ((source
             (the string
               (lexer-source ,evaluated-lexer)))
            (position
             (the fixnum
               (lexer-position ,evaluated-lexer)))
            (character
             (the (or null character)
               (lexer-character ,evaluated-lexer))))
         (declare (type string              source))
         (declare (ignorable                source))
         (declare (type fixnum              position))
         (declare (ignorable                position))
         (declare (type (or null character) character))
         (declare (ignorable                character))
         (flet
             ((advance ()
               "Moves the POSITION cursor to the next character in the
                SOURCE, if possible, updates the current CHARACTER, and
                returns no value."
               (setf character
                 (when (array-in-bounds-p source (1+ position))
                   (char source (incf position))))
               (values))
              (character-equals-p (expected-character)
               "Checks whether the current CHARACTER equals the
                EXPECTED-CHARACTER in a case-sensitive mode, returning
                on confirmation a ``boolean'' value of ``T'', otherwise
                ``NIL''."
               (the boolean
                 (not (null
                   (and character
                        (char= character expected-character)))))))
           ,@body)))))

;;; -------------------------------------------------------

(defun lexer-skip-whitespaces (lexer)
  "Starting at the current position into the LEXER's source, skips a
   sequence of zero or more adjacent whitespaces and returns the
   contingently modified LEXER."
  (declare (type Lexer lexer))
  (with-lexer (lexer)
    (loop while (and character (whitespace-character-p character)) do
      (advance)))
  (the Lexer lexer))

;;; -------------------------------------------------------

(defun lexer-read-singleton-token (lexer token-type)
  "Envelops the LEXER's current character as the value into a fresh
   token of the TOKEN-TYPE and returns this encapsulation, while
   concomitantly advancing the LEXER's position cursor."
  (declare (type Lexer   lexer))
  (declare (type keyword token-type))
  (with-lexer (lexer)
    (the Token
      (prog1
        (make-token token-type character)
        (advance)))))

;;; -------------------------------------------------------

(defun lexer-read-quoted-character (lexer)
  "Expecting the LEXER to currently reside on a double quote ('\"'),
   skips the same, envelops the next character in a fresh token of the
   type ``:quoted-character'' and this encapsulation, while
   concomitantly advancing the LEXER's position cursor."
  (declare (type Lexer lexer))
  (with-lexer (lexer)
    (advance)
    (the Token
      (if character
        (lexer-read-singleton-token lexer :quoted-character)
        (error "Expected a character succeeding the comma, ~
                but encountered end of file (EOF) at position ~d."
          position)))))

;;; -------------------------------------------------------

(defun lexer-read-apostrophized-character (lexer)
  "Expecting the LEXER to currently reside on an apostrophe (\"'\"),
   skips the same, envelops the next character in a fresh token of the
   type ``:apostrophized-character'' and this encapsulation, while
   concomitantly advancing the LEXER's position cursor."
  (declare (type Lexer lexer))
  (with-lexer (lexer)
    (advance)
    (the Token
      (if character
        (lexer-read-singleton-token lexer :apostrophized-character)
        (error "Expected a character succeeding the apostrophe, ~
                but encountered end of file (EOF) at position ~d."
          position)))))

;;; -------------------------------------------------------

(defun ascertain-natural-number (integer)
  "Checks whether the INTEGER represents a natural number, that is, a
   positive integer value in the range [1, +infinity], on confirmation
   returning the INTEGER itself, otherwise signaling an error of an
   unspecified type."
  (declare (type integer integer))
  (the natural-number
    (if (typep integer 'natural-number)
      integer
      (error "The value ~d is not a natural number." integer))))

;;; -------------------------------------------------------

(defun lexer-read-integer (lexer)
  "Starting at the current position into the LEXER's source, reads a
   sequence of zero or more ternary (base-3) digits and returns an
   ``:integer'' token representation thereof."
  (declare (type Lexer lexer))
  (with-lexer (lexer)
    (the Token
      (make-token :integer
        (ascertain-natural-number
          (parse-integer
            (with-output-to-string (digits)
              (declare (type string-stream digits))
              (loop while (and character (digit-char-p character 3)) do
                (write-char character digits)
                (advance)))
            :radix 3))))))

;;; -------------------------------------------------------

(defun lexer-get-next-token (lexer)
  "Returns the next token from the LEXER.
   ---
   In the case of its source's exhaustion, the LEXER responds to each
   query with a fresh instance of an end-of-file (EOF) token."
  (declare (type Lexer lexer))
  (with-lexer (lexer)
    (the Token
      (cond
        ((null character)
          (make-token :eof NIL))
        
        ((whitespace-character-p character)
          (lexer-skip-whitespaces lexer)
          (lexer-get-next-token   lexer))
        
        ((digit-char-p character 3)
          (lexer-read-integer lexer))
        
        ((character-equals-p #\%)
          (lexer-read-singleton-token lexer :percent))
        
        ((character-equals-p #\Ø)
          (lexer-read-singleton-token lexer :empty-set))
        
        ((character-equals-p #\{)
          (lexer-read-singleton-token lexer :left-brace))
        
        ((character-equals-p #\})
          (lexer-read-singleton-token lexer :right-brace))
        
        ((character-equals-p #\,)
          (lexer-read-singleton-token lexer :comma))
        
        ((character-equals-p #\*)
          (lexer-read-singleton-token lexer :asterisk))
        
        ((character-equals-p #\")
          (lexer-read-quoted-character lexer))
        
        ((character-equals-p #\∪)
          (lexer-read-singleton-token lexer :union))
        
        ((character-equals-p #\∩)
          (lexer-read-singleton-token lexer :intersection))
        
        ((character-equals-p #\⊆)
          (lexer-read-singleton-token lexer :subset))
        
        ((character-equals-p #\⊂)
          (lexer-read-singleton-token lexer :proper-subset))
        
        ((character-equals-p #\⊄)
          (lexer-read-singleton-token lexer :not-subset))
        
        ((character-equals-p #\⊇)
          (lexer-read-singleton-token lexer :superset))
        
        ((character-equals-p #\⊃)
          (lexer-read-singleton-token lexer :proper-superset))
        
        ((character-equals-p #\⊅)
          (lexer-read-singleton-token lexer :not-superset))
        
        ((character-equals-p #\[)
          (lexer-read-singleton-token lexer :left-bracket))
        
        ((character-equals-p #\])
          (lexer-read-singleton-token lexer :right-bracket))
        
        ((character-equals-p #\=)
          (lexer-read-singleton-token lexer :equal))
        
        ((character-equals-p #\c)
          (lexer-read-singleton-token lexer :c))
        
        ((character-equals-p #\-)
          (lexer-read-singleton-token lexer :left-difference))
        
        ((character-equals-p #\_)
          (lexer-read-singleton-token lexer :right-difference))
        
        ((character-equals-p #\:)
          (lexer-read-singleton-token lexer :colon))
        
        ((character-equals-p #\;)
          (lexer-read-singleton-token lexer :semicolon))
        
        ((character-equals-p #\~)
          (lexer-read-singleton-token lexer :tilde))
        
        ((character-equals-p #\')
          (lexer-read-apostrophized-character lexer))
        
        ((character-equals-p #\/)
          (lexer-read-singleton-token lexer :slash))
        
        ((character-equals-p #\\)
          (lexer-read-singleton-token lexer :backslash))
        
        ((ignorable-character-p character)
          (advance)
          (lexer-get-next-token lexer))
        
        (T
          (error "Invalid character \"~c\" at position ~d."
            character position))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; This class comprehends the definition of "Node" class and its
;; appertaining operations, serving to represent an abstract syntax tree
;; (AST) node.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of class "Node".                              -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstruct (Node
  (:constructor initialize-node (type)))
  "The ``Node'' class encapsulates the requisite information for
   representing an abstract syntax tree (AST) node.
   ---
   In lieu of subclassing, the different language aspects express their
   diorisms by adminiculum of a type property, operating in champarty
   with a hash table of attribute name-value twains where additional
   specifications impose such."
  (type       (error "Missing node type.") :type keyword)
  (attributes (make-hash-table :test #'eq) :type attribute-map))

;;; -------------------------------------------------------

(defun make-node (type &rest initial-attributes)
  "Creates and returns a new ``Node'' subsumed into the TYPE, and
   optionally endowed with the INITIAL-ATTRIBUTES, provided as a
   property list (plist) of zero or more attribute name-value pairs."
  (declare (type keyword        type))
  (declare (type attribute-list initial-attributes))
  (let ((node (initialize-node type)))
    (declare (type Node node))
    (loop
      for (attribute-name attribute-value)
        of-type (keyword T)
        on      initial-attributes
        by      #'cddr
      do
        (setf (gethash attribute-name (node-attributes node))
              attribute-value))
    (the Node node)))

;;; -------------------------------------------------------

(defun node-attribute (node attribute-name)
  "Returns the value of the attribute registered with the ATTRIBUTE-NAME
   at the NODE, or signals an error of an unspecified type upon the
   designator's absence."
  (declare (type Node node))
  (declare (type keyword attribute-name))
  (multiple-value-bind (attribute-value contains-name-p)
      (gethash attribute-name (node-attributes node))
    (declare (type T attribute-value))
    (declare (type T contains-name-p))
    (the T
      (if contains-name-p
        attribute-value
        (error "Unrecognized attribute name: ~s." attribute-name)))))

;;; -------------------------------------------------------

(defmethod print-object ((node Node) stream)
  (declare (type Node        node))
  (declare (type destination stream))
  (format stream "(NODE :TYPE ~s :ATTRIBUTES ["
    (node-type node))
  (loop
    for attribute-name
      of-type keyword
      being the hash-keys in (node-attributes node)
    using
      (hash-value attribute-value)
    for first-attribute-p
      of-type boolean
      =       T
      then    NIL
    do
      (unless first-attribute-p
        (format stream ", "))
      (format stream "~s => ~s" attribute-name attribute-value))
  (format stream "])"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; This class comprehends the definition of "Parser" class and its
;; appertaining operations, serving in the assemblage of an abstract
;; syntax tree (AST) from a series of tokens, supplied by a lexer.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of class "Parser".                            -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstruct (Parser
  (:constructor make-parser (lexer
                             &aux (current-token
                                    (lexer-get-next-token lexer)))))
  "The ``Parser'' class' task resolves to the assemblage of an abstract
   syntax tree (AST) from a series of tokens generated by a lexer under
   its castaldy."
  (lexer         (error "Missing lexer for parser.") :type Lexer)
  (current-token (make-token :eof NIL)               :type Token))

;;; -------------------------------------------------------

(declaim (ftype (function (Parser) Node) parser-parse-statement))

;;; -------------------------------------------------------

(defmacro with-parser ((parser) &body body)
  "Evaluates the PARSER and binds its slots ``lexer'' and
   ``current-token'' to eponymous local symbol macros for general
   access, evaluates the BODY forms, and returns the last processed
   form's results.
   ---
   Two local functions vouchsafe latreutical commodities:
   
     ------------------------------------------------------------------
     Local function       | Effect
     ---------------------+--------------------------------------------
     eat (type)           | Returns the current token if it conforms to
                          | the expected TYPE, while querying and
                          | storing the next for future purposes. If no
                          | conformity could be ascertained, an error
                          | of an unspecified type is signaled.
     ..................................................................
     eat-current-token () | Returns the current token, while querying
                          | and storing the next one for future
                          | purposes.
     ------------------------------------------------------------------"
  (let ((evaluated-parser (gensym)))
    (declare (type symbol evaluated-parser))
    `(let ((,evaluated-parser ,parser))
       (declare (type Parser ,evaluated-parser))
       (declare (ignorable   ,evaluated-parser))
       (symbol-macrolet
           ((lexer
             (the Lexer
               (parser-lexer parser)))
            (current-token
             (the Token
               (parser-current-token parser))))
         (declare (type Lexer lexer))
         (declare (ignorable  lexer))
         (declare (type Token current-token))
         (declare (ignorable  current-token))
         (flet
             ((eat (expected-token-type)
               "Checks whether the CURRENT-TOKEN conforms to the
                EXPECTED-TOKEN-TYPE, on confirmation returning the
                CURRENT-TOKEN while concomitantly querying and storing
                the next one from the LEXER; on a mismatch, an error of
                an unspecified type is signaled."
               (declare (type keyword expected-token-type))
               (the Token
                 (if (token-type-p current-token expected-token-type)
                   (prog1 current-token
                     (setf current-token
                       (lexer-get-next-token lexer)))
                   (error "Expected a token of the type ~s, ~
                           but encountered ~s."
                     expected-token-type current-token))))
              (eat-current-token ()
               "Returns the CURRENT-TOKEN before querying and storing
                the next one from the LEXER in its stead."
               (the Token
                 (prog1 current-token
                   (setf current-token
                     (lexer-get-next-token lexer))))))
           ,@body)))))

;;; -------------------------------------------------------

(defun parser-parse-integer-literal (parser)
  "Parses a base-3 integer literal using the PARSER and returns an
   ``:integer-literal'' node representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (the Node
      (make-node :integer-literal
        :value (token-value (eat :integer))))))

;;; -------------------------------------------------------

(defun parser-parse-variable (parser)
  "Parses a variable query expression using the PARSER and returns a
   ``:variable'' node representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (eat :percent)
    (the Node
      (make-node :variable))))

;;; -------------------------------------------------------

(defun parser-parse-expression (parser)
  "Parses a numeric expression using the PARSER, which may either
   constitute a literal integer or a variable access, and returns a node
   representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (the Node
      (case (token-type current-token)
        (:integer
          (parser-parse-integer-literal parser))
        (:percent
          (parser-parse-variable parser))
        (otherwise
          (error "Invalid expression token: ~s." current-token))))))

;;; -------------------------------------------------------

(defun parser-parse-empty-set (parser)
  "Parses an empty set (\"Ø\") and returns a ``:set-literal'' node
   representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (eat :empty-set)
    (the Node
      (make-node :set-literal :elements NIL))))

;;; -------------------------------------------------------

(defun parser-parse-non-empty-set (parser)
  "Parses a braced set literal, ensconced with \"{\" and \"}\", and
   returns a ``:set-literal'' node representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (eat :left-brace)
    (let ((elements NIL))
      (declare (type node-list elements))
      (unless (token-type-p current-token :right-brace)
        (push (parser-parse-expression parser) elements)
        (loop while (token-type-p current-token :comma) do
          (eat :comma)
          (push (parser-parse-expression parser) elements)))
      (eat :right-brace)
      (the Node
        (make-node :set-literal
          :elements (nreverse elements))))))

;;; -------------------------------------------------------

(defun parser-parse-set-literal (parser)
  "Parses a set literal using the PARSER, either constituting the empty
   set (\"Ø\") or a bracketed (\"{...}\") variant of zero or more
   elements, and returns a ``:set-literal'' node representation
   thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (the Node
      (case (token-type current-token)
        (:empty-set
          (parser-parse-empty-set parser))
        (:left-brace
          (parser-parse-non-empty-set parser))
        (otherwise
          (error "Expected an empty set or a set literal, ~
                  but encountered the token ~s."
            current-token))))))

;;; -------------------------------------------------------

(defun parser-parse-membership-flip (parser)
  "Parses a membership flip instruction using the PARSER and returns a
   ``:flip-membership'' node representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (eat :asterisk)
    (the Node
      (make-node :flip-membership
        :value (parser-parse-expression parser)))))

;;; -------------------------------------------------------

(defun parser-parse-character-output (parser)
  "Parses a character output instruction using the PARSER and returns a
   ``:print-character'' node representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (the Node
      (make-node :print-character :value
        (token-value
          (eat :quoted-character))))))

;;; -------------------------------------------------------

(defun parser-parse-set-operation (parser)
  "Parses a binary set operation using the PARSER and returns a
   ``:set-operation'' node representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (let ((operator      NIL)
          (right-operand NIL))
      (declare (type (or null set-operator) operator))
      (declare (type (or null Node)         right-operand))
      (setf operator      (token-type (eat-current-token)))
      (setf right-operand (parser-parse-set-literal parser))
      (the Node
        (make-node
          :set-operation
          :operator      operator
          :right-operand right-operand)))))

;;; -------------------------------------------------------

(defun parser-parse-loop (parser)
  "Parses a loop construct using the PARSER and returns a ``:loop'' node
   representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (let ((predicate       NIL)
          (guard-set       NIL)
          (body-statements NIL))
      (declare (type (or null set-relationship) predicate))
      (declare (type (or null Node)             guard-set))
      (declare (type node-list                  body-statements))
      (setf predicate (token-type (eat-current-token)))
      (setf guard-set (parser-parse-set-literal parser))
      (eat :left-bracket)
      (setf body-statements
        (loop
          until   (token-type-p current-token :right-bracket)
          collect (parser-parse-statement parser)))
      (eat :right-bracket)
      (the Node
        (make-node :loop
          :predicate predicate
          :guard-set guard-set
          :body      body-statements)))))

;;; -------------------------------------------------------

(defun parser-parse-character-test (parser)
  "Parses a conditional character test using the PARSER and returns an
   ``:if-character'' node representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (let ((guard-character NIL)
          (body-statements NIL))
      (declare (type (or null character) guard-character))
      (declare (type node-list           body-statements))
      (setf guard-character
        (token-value
          (eat :apostrophized-character)))
      (eat :slash)
      (setf body-statements
        (loop
          until   (token-type-p current-token :backslash)
          collect (parser-parse-statement parser)))
      (eat :backslash)
      (the Node
        (make-node :if-character
          :guard-character guard-character
          :body            body-statements)))))

;;; -------------------------------------------------------

(defun parser-parse-simple-instruction (parser token-type node-type)
  "Parses a single-token instruction, conforming to the TOKEN-TYPE,
   using the PARSER and returns a node representation thereof,
   identified by the NODE-TYPE."
  (declare (type Parser  parser))
  (declare (type keyword token-type))
  (declare (type keyword node-type))
  (with-parser (parser)
    (the Node
      (prog1
        (make-node node-type)
        (eat token-type)))))

;;; -------------------------------------------------------

(defun parser-parse-statement (parser)
  "Parses a single statement using the PARSER and returns a node
   representation thereof."
  (declare (type Parser parser))
  (with-parser (parser)
    (the Node
      (case (token-type current-token)
        (:asterisk
          (parser-parse-membership-flip parser))
        
        (:quoted-character
          (parser-parse-character-output parser))
        
        ((:subset   :proper-subset   :not-subset
          :superset :proper-superset :not-superset
          :equal)
          (parser-parse-loop parser))
        
        ((:union :intersection :left-difference :right-difference)
          (parser-parse-set-operation parser))
        
        (:c
          (parser-parse-simple-instruction parser :c :complement))
        
        (:colon
          (parser-parse-simple-instruction parser :colon
            :increment-variable))
        
        (:semicolon
          (parser-parse-simple-instruction parser :semicolon
            :decrement-variable))
        
        (:tilde
          (parser-parse-simple-instruction parser :tilde
            :input-character))
        
        (:apostrophized-character
          (parser-parse-character-test parser))
        
        (otherwise
          (error "Invalid statement token: ~s." current-token))))))

;;; -------------------------------------------------------

(defun parser-parse (parser)
  "Assembles the tokens supplied to the PARSER into an abstract syntax
   tree (AST) and returns its root node."
  (declare (type Parser parser))
  (with-parser (parser)
    (the Node
      (make-node :program :statements
        (prog1
          (loop
            until   (token-type-p current-token :eof)
            collect (parser-parse-statement parser))
          (eat :eof))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; This file comprehends the definition of the "SOAPSet" interface, the
;; implementing "Exclusive-SOAPSet" and "Inclusive-SOAPSet" classes, and
;; the appertaining operations, serving in the representation of the
;; set data structure.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Definition of interface "SOAPSet".                           -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstruct (SOAPSet)
  "The ``SOAPSet'' interface represents the foundation of all set
   implementations, bivious in their nature betwixt the inclusive and
   the exclusive variant, with the former subtype pertaining to finite
   sets, while the latter accommodates infinite expanses.
   ---
   Two subtypes of the ``SOAPSet'' class exist, each a complementary
   whole's representative by advocating a particular principle. The
   ``Inclusive-SOAPSet'' entity is ultimately founded upon an empty set,
   appropriating a finite tally of members from the ensconcing universe
   U. Athwart to this perspective, the ``Exclusive-SOAPSet'' inherits
   the complete universe U, thus being infinite in its haecceity, but
   excludes a finite tally of members from its cleronomy. In simple
   terms:
     inclusive SOAPSet = empty set  + finite elements of universe U
     exclusive SOAPSet = universe U - finite elements of universe U")

;;; -------------------------------------------------------

(defgeneric soapset-flip-membership (set element)
  (:documentation
    "Flips the membership of the ELEMENT in the SET, that is, removes it
     if it is present in the SET, otherwise adds it to the same, in any
     case returning no value."))

;;; -------------------------------------------------------

(defgeneric soapset-union (left-set right-set)
  (:documentation
    "Determines the union of the LEFT-SET and the RIGHT-SET and returns
     a new ``SOAPSet'' representative of the result.
     ---
     Neither the LEFT-SET nor the RIGHT-SET are modified in the
     process; additionally, the output instance does not share any
     properties with its progenitors."))

;;; -------------------------------------------------------

(defgeneric soapset-intersection (left-set right-set)
  (:documentation
    "Determines the intersection of the LEFT-SET and the RIGHT-SET and
     returns a new ``SOAPSet'' representative of the result.
     ---
     Neither the LEFT-SET nor the RIGHT-SET are modified in the
     process; additionally, the output instance does not share any
     properties with its progenitors."))

;;; -------------------------------------------------------

(defgeneric soapset-left-difference (left-set right-set)
  (:documentation
    "Determines the difference of the LEFT-SET reduced by the RIGHT-SET
     and returns a new ``SOAPSet'' representative of the result.
     ---
     Neither the LEFT-SET nor the RIGHT-SET are modified in the
     process; additionally, the output instance does not share any
     properties with its progenitors."))

;;; -------------------------------------------------------

(defgeneric soapset-right-difference (left-set right-set)
  (:documentation
    "Determines the difference of the RIGHT-SET reduced by the LEFT-SET
     and returns a new ``SOAPSet'' representative of the result.
     ---
     Neither the LEFT-SET nor the RIGHT-SET are modified in the
     process; additionally, the output instance does not share any
     properties with its progenitors."))

;;; -------------------------------------------------------

(defgeneric soapset-complement (set)
  (:documentation
    "Determines the complement of the SET and returns a new ``SOAPSet''
     representative of the result.
     ---
     The input SET is not modified in the process; additionally, the
     output instance does not share any properties with its
     progenitor."))

;;; -------------------------------------------------------

(defgeneric soapset-subset-p (left-set right-set)
  (:documentation
    "Checks whether the LEFT-SET constitutes a subset of the RIGHT-SET,
     returning on confirmation a ``boolean'' value of ``T'', otherwise
     ``NIL''."))

;;; -------------------------------------------------------

(defgeneric soapset-proper-subset-p (left-set right-set)
  (:documentation
    "Checks whether the LEFT-SET constitutes a proper subset of the
     RIGHT-SET, returning on confirmation a ``boolean'' value of ``T'',
     otherwise ``NIL''."))

;;; -------------------------------------------------------

(defgeneric soapset-not-subset-p (left-set right-set)
  (:documentation
    "Checks whether the LEFT-SET constitutes no subset of the RIGHT-SET,
     returning on confirmation a ``boolean'' value of ``T'', otherwise
     ``NIL''."))

;;; -------------------------------------------------------

(defgeneric soapset-superset-p (left-set right-set)
  (:documentation
    "Checks whether the LEFT-SET constitutes a superset of the
     RIGHT-SET, returning on confirmation a ``boolean'' value of ``T'',
     otherwise ``NIL''."))

;;; -------------------------------------------------------

(defgeneric soapset-proper-superset-p (left-set right-set)
  (:documentation
    "Checks whether the LEFT-SET constitutes a proper superset of the
     RIGHT-SET, returning on confirmation a ``boolean'' value of ``T'',
     otherwise ``NIL''."))

;;; -------------------------------------------------------

(defgeneric soapset-not-superset-p (left-set right-set)
  (:documentation
    "Checks whether the LEFT-SET constitutes no superset of the
     RIGHT-SET, returning on confirmation a ``boolean'' value of ``T'',
     otherwise ``NIL''."))

;;; -------------------------------------------------------

(defgeneric soapset-equal-p (left-set right-set)
  (:documentation
    "Checks whether the LEFT-SET is equal to the RIGHT-SET, returning on
     confirmation a ``boolean'' value of ``T'', otherwise ``NIL''."))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of class "Exclusive-SOAPSet".                 -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstruct (Exclusive-SOAPSet
  (:include     SOAPSet)
  (:constructor make-exclusive-soapset
    (&optional (blacklist NIL)
     &aux      (blacklist (copy-list blacklist)))))
  "The ``Exclusive-SOAPSet'' class represents an infinite set of natural
   numbers defined by those elements from the universe U *not* present
   in the particular set instance.
   ---
   The universe elements absent from an exclusive set are represented by
   a \"blacklist\", a simple list acting in the agency of a set. In
   corollary, adding to such a blacklist effectively removes an element
   from the set; while removing a member from the list declares it an
   actual set member."
  (blacklist NIL :type number-list))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of class "Inclusive-SOAPSet".                 -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstruct (Inclusive-SOAPSet
  (:include     SOAPSet)
  (:constructor make-inclusive-soapset
    (&optional (elements NIL)
     &aux      (elements (copy-list elements)))))
  "The ``Inclusive-SOAPSet'' class represents a finite set of natural
   numbers defined by the elements present in the same."
  (elements NIL :type number-list))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-flip-membership".          -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-flip-membership ((set     Exclusive-SOAPSet)
                                    (element integer))
  (declare (type Exclusive-SOAPSet set))
  (declare (type integer           element))
  (if (member element (exclusive-soapset-blacklist set) :test #'=)
    (setf (exclusive-soapset-blacklist set)
      (delete element
        (exclusive-soapset-blacklist set)
        :test #'=))
    (push element (exclusive-soapset-blacklist set)))
  (values))

;;; -------------------------------------------------------

(defmethod soapset-flip-membership ((set     Inclusive-SOAPSet)
                                    (element integer))
  (declare (type Inclusive-SOAPSet set))
  (declare (type integer           element))
  (if (member element (inclusive-soapset-elements set) :test #'=)
    (setf (inclusive-soapset-elements set)
      (delete element
        (inclusive-soapset-elements set)
        :test #'=))
    (push element (inclusive-soapset-elements set)))
  (values))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-union".                    -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-union ((left-set  Exclusive-SoapSet)
                          (right-set Exclusive-SoapSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the Exclusive-SOAPSet
    (make-exclusive-soapset
      (intersection
        (exclusive-soapset-blacklist left-set)
        (exclusive-soapset-blacklist right-set)))))

;;; -------------------------------------------------------

(defmethod soapset-union ((left-set  Exclusive-SOAPSet)
                          (right-set Inclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (the Exclusive-SOAPSet
    (make-exclusive-soapset
      (set-difference
        (exclusive-soapset-blacklist left-set)
        (inclusive-soapset-elements  right-set)))))

;;; -------------------------------------------------------

(defmethod soapset-union ((left-set  Inclusive-SOAPSet)
                          (right-set Exclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the Exclusive-SOAPSet
    (make-exclusive-soapset
      (set-difference
        (exclusive-soapset-blacklist right-set)
        (inclusive-soapset-elements  left-set)))))

;;; -------------------------------------------------------

(defmethod soapset-union ((left-set  Inclusive-SOAPSet)
                          (right-set Inclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (the Inclusive-SOAPSet
    (make-inclusive-soapset
      (union
        (inclusive-soapset-elements left-set)
        (inclusive-soapset-elements right-set)))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-intersection".             -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-intersection ((left-set  Exclusive-SOAPSet)
                                 (right-set Exclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the Exclusive-SOAPSet
    (make-exclusive-soapset
      (union
        (exclusive-soapset-blacklist left-set)
        (exclusive-soapset-blacklist right-set)))))

;;; -------------------------------------------------------

(defmethod soapset-intersection ((left-set  Exclusive-SOAPSet)
                                 (right-set Inclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (the Inclusive-SOAPSet
    (make-inclusive-soapset
      (set-difference
        (inclusive-soapset-elements  right-set)
        (exclusive-soapset-blacklist left-set)))))

;;; -------------------------------------------------------

(defmethod soapset-intersection ((left-set  Inclusive-SOAPSet)
                                 (right-set Exclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the Inclusive-SOAPSet
    (make-inclusive-soapset
      (set-difference
        (inclusive-soapset-elements  left-set)
        (exclusive-soapset-blacklist right-set)))))

;;; -------------------------------------------------------

(defmethod soapset-intersection ((left-set  Inclusive-SOAPSet)
                                 (right-set Inclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (the Inclusive-SOAPSet
    (make-inclusive-soapset
      (intersection
        (inclusive-soapset-elements left-set)
        (inclusive-soapset-elements right-set)))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-left-difference".          -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-left-difference ((left-set  Exclusive-SOAPSet)
                                    (right-set Exclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the Inclusive-SOAPSet
    (make-inclusive-soapset
      (set-difference
        (exclusive-soapset-blacklist right-set)
        (exclusive-soapset-blacklist left-set)))))

;;; -------------------------------------------------------

(defmethod soapset-left-difference ((left-set  Exclusive-SOAPSet)
                                    (right-set Inclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (the Exclusive-SOAPSet
    (make-exclusive-soapset
      (union
        (exclusive-soapset-blacklist left-set)
        (inclusive-soapset-elements  right-set)))))

;;; -------------------------------------------------------

(defmethod soapset-left-difference ((left-set  Inclusive-SOAPSet)
                                    (right-set Exclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the Inclusive-SOAPSet
    (make-inclusive-soapset
      (intersection
        (inclusive-soapset-elements  left-set)
        (exclusive-soapset-blacklist right-set)))))

;;; -------------------------------------------------------

(defmethod soapset-left-difference ((left-set  Inclusive-SOAPSet)
                                    (right-set Inclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (the Inclusive-SOAPSet
    (make-inclusive-soapset
      (set-difference
        (inclusive-soapset-elements left-set)
        (inclusive-soapset-elements right-set)))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-right-difference".         -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-right-difference ((left-set  SOAPSet)
                                     (right-set SOAPSet))
  (declare (type SOAPSet left-set))
  (declare (type SOAPSet right-set))
  (the SOAPSet
    (soapset-left-difference right-set left-set)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-complement".               -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-complement ((set Exclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet set))
  (the Inclusive-SOAPSet
    (make-inclusive-soapset
      (exclusive-soapset-blacklist set))))

;;; -------------------------------------------------------

(defmethod soapset-complement ((set Inclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet set))
  (the Exclusive-SOAPSet
    (make-exclusive-soapset
      (inclusive-soapset-elements set))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-subset-p".                 -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-subset-p ((left-set  Exclusive-SOAPSet)
                             (right-set Exclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the boolean
    (not (null
      (every
        #'(lambda (left-element)
            (declare (type integer left-element))
            (member left-element
              (exclusive-soapset-blacklist right-set)
              :test #'=))
        (exclusive-soapset-blacklist left-set))))))

;;; -------------------------------------------------------

(defmethod soapset-subset-p ((left-set  Exclusive-SOAPSet)
                             (right-set Inclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (ignore                 left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (declare (ignore                 right-set))
  (the boolean NIL))

;;; -------------------------------------------------------

(defmethod soapset-subset-p ((left-set  Inclusive-SOAPSet)
                             (right-set Exclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the boolean
    (the boolean
      (not (null
        (notany
          #'(lambda (left-element)
              (declare (type integer left-element))
              (member left-element
                (exclusive-soapset-blacklist right-set)
                :test #'=))
          (inclusive-soapset-elements left-set)))))))

;;; -------------------------------------------------------

(defmethod soapset-subset-p ((left-set  Inclusive-SOAPSet)
                             (right-set Inclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (the boolean
    (the boolean
      (not (null
        (every
          #'(lambda (left-element)
              (declare (type integer left-element))
              (member left-element
                (inclusive-soapset-elements right-set)
                :test #'=))
          (inclusive-soapset-elements left-set)))))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-proper-subset-p".          -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-proper-subset-p ((left-set  Exclusive-SOAPSet)
                                    (right-set Exclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the boolean
    (not (null
      (and (soapset-subset-p left-set right-set)
           (< (length (exclusive-soapset-blacklist left-set))
              (length (exclusive-soapset-blacklist right-set))))))))

;;; -------------------------------------------------------

(defmethod soapset-proper-subset-p ((left-set  Exclusive-SOAPSet)
                                    (right-set Inclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (ignore                 left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (declare (ignore                 right-set))
  (the boolean NIL))

;;; -------------------------------------------------------

(defmethod soapset-proper-subset-p ((left-set  Inclusive-SOAPSet)
                                    (right-set Exclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the boolean
    (soapset-subset-p left-set right-set)))

;;; -------------------------------------------------------

(defmethod soapset-proper-subset-p ((left-set  Inclusive-SOAPSet)
                                    (right-set Inclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (the boolean
    (not (null
      (and (soapset-subset-p left-set right-set)
           (< (length (inclusive-soapset-elements left-set))
              (length (inclusive-soapset-elements right-set))))))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-not-subset-p".             -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-not-subset-p ((left-set  SOAPSet)
                                 (right-set SOAPSet))
  (declare (type SOAPSet left-set))
  (declare (type SOAPSet right-set))
  (the boolean
    (not (soapset-subset-p left-set right-set))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-superset-p".               -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-superset-p ((left-set  SOAPSet)
                               (right-set SOAPSet))
  (declare (type SOAPSet left-set))
  (declare (type SOAPSet right-set))
  (the boolean
    (soapset-subset-p right-set left-set)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-proper-superset-p".        -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-proper-superset-p ((left-set  SOAPSet)
                                      (right-set SOAPSet))
  (declare (type SOAPSet left-set))
  (declare (type SOAPSet right-set))
  (the boolean
    (soapset-proper-subset-p right-set left-set)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-not-superset-p".           -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-not-superset-p ((left-set  SOAPSet)
                                   (right-set SOAPSet))
  (declare (type SOAPSet left-set))
  (declare (type SOAPSet right-set))
  (the boolean
    (soapset-not-subset-p right-set left-set)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of method "soapset-equal-p".                  -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod soapset-equal-p ((left-set  Exclusive-SOAPSet)
                            (right-set Exclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (the boolean
    (not (null
      (and (soapset-subset-p left-set right-set)
           (= (length (exclusive-soapset-blacklist left-set))
              (length (exclusive-soapset-blacklist right-set))))))))

;;; -------------------------------------------------------

(defmethod soapset-equal-p ((left-set  Exclusive-SOAPSet)
                            (right-set Inclusive-SOAPSet))
  (declare (type Exclusive-SOAPSet left-set))
  (declare (ignore                 left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (declare (ignore                 right-set))
  (the boolean NIL))

;;; -------------------------------------------------------

(defmethod soapset-equal-p ((left-set  Inclusive-SOAPSet)
                            (right-set Exclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (ignore                 left-set))
  (declare (type Exclusive-SOAPSet right-set))
  (declare (ignore                 right-set))
  (the boolean NIL))

;;; -------------------------------------------------------

(defmethod soapset-equal-p ((left-set  Inclusive-SOAPSet)
                            (right-set Inclusive-SOAPSet))
  (declare (type Inclusive-SOAPSet left-set))
  (declare (type Inclusive-SOAPSet right-set))
  (the boolean
    (not (null
      (and (soapset-subset-p left-set right-set)
           (= (length (inclusive-soapset-elements left-set))
              (length (inclusive-soapset-elements right-set))))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; This file comprehends the definition of the "Interpreter" class and
;; its appertaining operations, serving in the evaluation of an abstract
;; syntax tree (AST) representation of a SOAP program, produced by a
;; parser.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; -- Implementation of class "Interpreter".                       -- ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstruct (Interpreter
  (:constructor make-interpreter (tree)))
  "The ``Interpreter'' class provides an entity responsible for the
   application of effect to an abstract syntax tree (AST)."
  (tree     (error "Missing AST root node.") :type Node)
  (main-set (make-inclusive-soapset)         :type SOAPSet)
  (variable 1                                :type natural-number)
  (input    #\Null                           :type character))

;;; -------------------------------------------------------

(defmacro with-interpreter ((interpreter) &body body)
  "Evaluates the INTERPRETER, binds its slots ``tree'', ``main-set'',
   ``variable'' and ``input'' to eponymous local symbol macros for
   general access, evaluates the BODY forms, and returns the last
   processed form's results."
  (let ((evaluated-interpreter (gensym)))
    (declare (type symbol evaluated-interpreter))
    `(let ((,evaluated-interpreter ,interpreter))
       (declare (type Interpreter ,evaluated-interpreter))
       (declare (ignorable        ,evaluated-interpreter))
       (symbol-macrolet
           ((tree
             (the Node
               (interpreter-tree ,evaluated-interpreter)))
            (main-set
             (the SOAPSet
               (interpreter-main-set ,evaluated-interpreter)))
            (variable
             (the natural-number
               (interpreter-variable ,evaluated-interpreter)))
            (input
             (the character
               (interpreter-input ,evaluated-interpreter))))
         (declare (type Node           tree))
         (declare (ignorable           tree))
         (declare (type SOAPSet        main-set))
         (declare (ignorable           main-set))
         (declare (type natural-number variable))
         (declare (ignorable           variable))
         (declare (type character      input))
         (declare (ignorable           input))
         ,@body))))

;;; -------------------------------------------------------

(defgeneric interpreter-dispatch-node (interpreter node-type node)
  (:documentation
    "Visits the NODE using the INTERPRETER, dispatching on the
     NODE-TYPE as the NODE's category identifier, and returns a value
     appropriate for the same."))

;;; -------------------------------------------------------

(defun interpreter-visit-node (interpreter node)
  "Visits the NODE using the INTERPRETER by dispatching on the NODE-TYPE
   in order to invoke the most fitten ``interpreter-dispatch-node''
   mehod and returns a value appropriate for the NODE."
  (declare (type Interpreter interpreter))
  (declare (type Node        node))
  (the T
    (interpreter-dispatch-node interpreter (node-type node) node)))

;;; -------------------------------------------------------

(defmacro define-node-dispatch
    (node-type (interpreter-variable node-variable) &body body)
  "Defines an implementation of the generic function
   ``interpreter-dispatch-node'' with its first argument being
   designated by the INTERPRETER-VARIABLE, its second automatically
   named, dispatching on the NODE-TYPE, and its third denoted with the
   NODE-VARIABLE designator, evaluates the BODY forms, and returns the
   last processed form's results."
  (let ((node-type-variable    (gensym)))
    (declare (type symbol node-type-variable))
    `(defmethod interpreter-dispatch-node
         ((,interpreter-variable Interpreter)
          (,node-type-variable   (eql ,node-type))
          (,node-variable        Node))
       (declare (type Interpreter ,interpreter-variable))
       (declare (ignorable        ,interpreter-variable))
       (declare (type keyword     ,node-type-variable))
       (declare (ignore           ,node-type-variable))
       (declare (type Node        ,node-variable))
       (declare (ignorable        ,node-variable))
       ,@body)))

;;; -------------------------------------------------------

(define-node-dispatch :integer-literal (interpreter node)
  (the natural-number
    (node-attribute node :value)))

;;; -------------------------------------------------------

(define-node-dispatch :variable (interpreter node)
  (the natural-number
    (interpreter-variable interpreter)))

;;; -------------------------------------------------------

(define-node-dispatch :set-literal (interpreter node)
  (the Inclusive-SOAPSet
    (make-inclusive-soapset
      (mapcar
        #'(lambda (element-node)
            (declare (type Node element-node))
            (interpreter-visit-node interpreter element-node))
        (node-attribute node :elements)))))

;;; -------------------------------------------------------

(define-node-dispatch :program (interpreter node)
  (dolist (statement (node-attribute node :statements))
    (declare (type Node statement))
    (interpreter-visit-node interpreter statement))
  (values))

;;; -------------------------------------------------------

(define-node-dispatch :flip-membership (interpreter node)
  (with-interpreter (interpreter)
    (soapset-flip-membership main-set
      (interpreter-visit-node interpreter
        (node-attribute node :value))))
  (values))

;;; -------------------------------------------------------

(define-node-dispatch :print-character (interpreter node)
  (write-char
    (node-attribute node :value))
  (values))

;;; -------------------------------------------------------

(defun interpreter-apply-operator (interpreter operator right-operand)
  "Applies the binary set operation defined by OPERATOR, utilizing the
   INTERPRETER's main set as the first operand, accompanied by the
   RIGHT-OPERAND as the second participant, updates the main set in the
   INTERPRETER to contain the result, and returns no value."
  (declare (type Interpreter  interpreter))
  (declare (type set-operator operator))
  (declare (type SOAPSet      right-operand))
  (with-interpreter (interpreter)
    (setf main-set
      (case operator
        (:union
          (soapset-union main-set right-operand))
        (:intersection
          (soapset-intersection main-set right-operand))
        (:left-difference
          (soapset-left-difference main-set right-operand))
        (:right-difference
          (soapset-right-difference main-set right-operand))
        (otherwise
          (error "Invalid binary set operator ~s applied to ~
                  right operand ~s."
            operator right-operand)))))
  (values))

;;; -------------------------------------------------------

(define-node-dispatch :set-operation (interpreter node)
  (let ((operator      (node-attribute node :operator))
        (right-operand (node-attribute node :right-operand)))
    (declare (type set-operator operator))
    (declare (type Node         right-operand))
    (interpreter-apply-operator interpreter operator
      (interpreter-visit-node interpreter right-operand)))
  (values))

;;; -------------------------------------------------------

(defun interpreter-loop-predicate-satisfied-p (interpreter
                                               predicate
                                               test-set)
  "Checks whether the INTERPRETER's main set satisfies the PREDICATE
   when supplied as its first operand in conjunction with the TEST-SET
   as second, returning on confirmation a ``boolean'' value of ``T'',
   otherwise ``NIL''."
  (declare (type Interpreter      interpreter))
  (declare (type set-relationship predicate))
  (declare (type SOAPSet          test-set))
  (with-interpreter (interpreter)
    (the boolean
      (case predicate
        (:subset
          (soapset-subset-p main-set test-set))
        (:proper-subset
          (soapset-proper-subset-p main-set test-set))
        (:not-subset
          (soapset-not-subset-p main-set test-set))
        (:superset
          (soapset-superset-p main-set test-set))
        (:proper-superset
          (soapset-proper-superset-p main-set test-set))
        (:not-superset
          (soapset-not-superset-p main-set test-set))
        (:equal
          (soapset-equal-p main-set test-set))
        (otherwise
          (error "Invalid loop predicate: ~s." predicate))))))

;;; -------------------------------------------------------

(define-node-dispatch :loop (interpreter node)
  (let ((predicate (node-attribute node :predicate))
        (guard-set (node-attribute node :guard-set))
        (body      (node-attribute node :body)))
    (declare (type set-relationship predicate))
    (declare (type Node             guard-set))
    (declare (type node-list        body))
    (declare (ignorable             body))
    (flet
        ((predicate-satisfied-p ()
          "Checks whether the loop NODE's predicate is satisfied,
           returning on confirmation a ``boolean'' value of ``T'',
           otherwise ``NIL''."
          (the boolean
            (interpreter-loop-predicate-satisfied-p
              interpreter
              predicate
              (interpreter-visit-node interpreter guard-set)))))
      (loop while (predicate-satisfied-p) do
        (dolist (body-statement body)
          (declare (type Node body-statement))
          (interpreter-visit-node interpreter body-statement)))))
  (values))

;;; -------------------------------------------------------

(define-node-dispatch :increment-variable (interpreter node)
  (with-interpreter (interpreter)
    (incf variable))
  (values))

;;; -------------------------------------------------------

(define-node-dispatch :decrement-variable (interpreter node)
  (with-interpreter (interpreter)
    (when (> variable 1)
      (decf variable)))
  (values))

;;; -------------------------------------------------------

#|
(setf input
  (prog1
    (or (read-char NIL NIL)
        input)
    (clear-input)))
|#

(define-node-dispatch :input-character (interpreter node)
  (with-interpreter (interpreter)
    (setf input
      (or (read-char NIL NIL)
          #\Null)))
  (clear-input)
  (values))

;;; -------------------------------------------------------

(define-node-dispatch :if-character (interpreter node)
  (let ((guard-character (node-attribute node :guard-character))
        (body-statements (node-attribute node :body)))
    (declare (type character guard-character))
    (declare (type node-list body-statements))
    (declare (ignorable      body-statements))
    (with-interpreter (interpreter)
      (when (char= guard-character input)
        (dolist (body-statement body-statements)
          (declare (type Node body-statement))
          (interpreter-visit-node interpreter body-statement)))))
  (values))

;;; -------------------------------------------------------

(defun interpreter-interpret (interpreter)
  "Interprets the abstract syntax tree (AST) maintained by the
   INTERPRETER and returns its last evaluated statement's result."
  (declare (type Interpreter interpreter))
  (the T
    (interpreter-visit-node interpreter
      (interpreter-tree interpreter))))

;;; -------------------------------------------------------

(defun interpret-SOAP (code)
  "Interprets the piece of SOAP source CODE and returns the last
   evaluated statement's result."
  (declare (type string code))
  (the T
    (interpreter-interpret
      (make-interpreter
        (parser-parse
          (make-parser
            (make-lexer code)))))))

;;; -------------------------------------------------------

(defun load-SOAP-script ()
  "Reads zero or more lines from the standard input, concatenates the
   same, interprets the result as a piece of SOAP source code, executes
   it, and returns no value."
  (interpret-SOAP
    (with-output-to-string (code)
      (declare (type string-stream code))
      (loop
        for line
          of-type (or null string)
          =       (read-line *standard-input* NIL NIL)
        while (and line (plusp (length line)))
        do (format code "~&~a" line))))
  (values))

;;; -------------------------------------------------------

;; Example on how to run a program
;; Make sure to escape quotes and backslashes
;; (they are required for I/O)
(interpret-SOAP "*%⊇{1}[\"e*1]")

;;; -------------------------------------------------------

;; Query the user for zero or more lines of SOAP code and evaluate the
;; same.
(load-SOAP-script)
