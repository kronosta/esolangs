with Ada.Text_IO;
with Ada.Text_IO.Text_Streams;
with Ada.Command_Line;
with Ada.Strings.Unbounded;
with Ada.Containers.Vectors;
with Ada.Characters.Latin_1;

-----------------------------------------------------------------------------------
--| This is an interpreter for the ASCII version of the SOAP esolang, known as  |--
--| SOAPI. It was mainly created to test out my Ada skills, and the result is   |--
--| that I definitely still am a newb at Ada.                                   |--
--| I decided to finish the interpreter anyway, so enjoy!                       |--
-----------------------------------------------------------------------------------
procedure Detergent is
  Cmd_Arg_Exception     : exception;
  SOAP_Syntax_Exception : exception;


  package SU renames Ada.Strings.Unbounded;


  type SOAP_Int is new Integer;


  package SOAP_Int_Vectors is new Ada.Containers.Vectors(
    Element_Type => SOAP_Int,
    Index_Type   => Natural
  );

  -------------------------------------------------------------------------------------------------------------------------------
  --| I found out that the GNAT implementation of Ada.Containers.Hashed_Sets doesn't work correctly,                          |--
  --| or at least the way I expected it to (after a bit of testing, neither Is_Subset nor Contains return the correct value). |--
  --|                                                                                                                         |--
  --| So I decided to make my own, extremely inefficient set package.                                                         |--
  --| It's built to run specifically for SOAP_Ints, and requires an Ada.Container.Vectors package with:                       |--
  --|  Element_Type => SOAP_Int,                                                                                              |--
  --|   Index_Type   => Natural                                                                                               |--
  --| be named SOAP_Int_Vectors, but it could probably be modified to fit any type with = support.                            |--
  --| Please don't though, this is so inefficient.                                                                            |--
  -------------------------------------------------------------------------------------------------------------------------------
  package SOAP_Fin_Sets is
    type Set is record
      Vec : SOAP_Int_Vectors.Vector;
    end record;
    function Empty_Set return Set;
    function Clone (S : Set) return Set;
    function Has_Element(S : Set; Elem : SOAP_Int) return Boolean;
    procedure Include(S : in out Set; Elem : in SOAP_Int);
    procedure Exclude(S : in out Set; Elem : in SOAP_Int);
    procedure Union(A : in out Set; B : in Set);
    procedure Intersection(A : in out Set; B : in Set);
    procedure Difference(A : in out Set; B : in Set);
    function Is_Subset(A, B : in Set) return Boolean;
    function Length(S : Set) return Natural;
    procedure Debug_Print(S : Set);
  end SOAP_Fin_Sets;


  package body SOAP_Fin_Sets is


    function Empty_Set return Set is
      New_Vec : SOAP_Int_Vectors.Vector;
    begin
      return Set'(Vec => New_Vec);
    end;


    function Clone (S : Set) return Set is
      New_Set : Set := Empty_Set;
    begin
      for I in 0..(Natural(SOAP_Int_Vectors.Length(S.Vec)) - 1) loop
        Include(New_Set, SOAP_Int_Vectors.Element(S.Vec, I));
      end loop;
      return New_Set;
    end Clone;


    function Has_Element(S : Set; Elem : SOAP_Int) return Boolean is
    begin
      for I in 0..(Natural(SOAP_Int_Vectors.Length(S.Vec)) - 1) loop
        if SOAP_Int_Vectors.Element(S.Vec, I) = Elem then
          --Ada.Text_IO.Put_Line("Found " & SOAP_Int'Image(Elem));
          return True;
        end if;
      end loop;
      return False;
    end;


    procedure Include(S : in out Set; Elem : in SOAP_Int) is
      Accumulator : Boolean := True;
    begin
      for I in 0..(Natural(SOAP_Int_Vectors.Length(S.Vec)) - 1) loop
        if SOAP_Int_Vectors.Element(S.Vec, I) = Elem then
          Accumulator := False;
        end if;
      end loop;
      if Accumulator then
        SOAP_Int_Vectors.Append(S.Vec, Elem);
      end if;
    end Include;


    procedure Exclude(S : in out Set; Elem : in SOAP_Int) is
      New_Vec : SOAP_Int_Vectors.Vector;
    begin
      for I in 0..(Natural(SOAP_Int_Vectors.Length(S.Vec)) - 1) loop
        if SOAP_Int_Vectors.Element(S.Vec, I) /= Elem then
          SOAP_Int_Vectors.Append(New_Vec, SOAP_Int_Vectors.Element(S.Vec, I));
        end if;
      end loop;
      S.Vec := New_Vec;
    end Exclude;


    procedure Union(A : in out Set; B : in Set) is
    begin
      for I in 0..(Natural(SOAP_Int_Vectors.Length(B.Vec)) - 1) loop
        Include(A, SOAP_Int_Vectors.Element(B.Vec, I));
      end loop;
    end Union;


    procedure Intersection(A : in out Set; B : in set) is
      New_Vec : SOAP_Int_Vectors.Vector;
    begin
      for I in 0..(Natural(SOAP_Int_Vectors.Length(B.Vec)) - 1) loop
        if Has_Element(A, SOAP_Int_Vectors.Element(B.Vec, I)) then
          SOAP_Int_Vectors.Append(New_Vec, SOAP_Int_Vectors.Element(B.Vec, I));
        end if;
      end loop;
      A.Vec := New_Vec;
    end Intersection;


    procedure Difference(A : in out Set; B : in Set) is
    begin
      for I in 0..(Natural(SOAP_Int_Vectors.Length(B.Vec)) - 1) loop
        Exclude(A, SOAP_Int_Vectors.Element(B.Vec, I));
      end loop;
    end;


    function Is_Subset(A, B : in Set) return Boolean is
    begin
      for I in 0..(Natural(SOAP_Int_Vectors.Length(A.Vec)) - 1) loop
        if not Has_Element(B, SOAP_Int_Vectors.Element(A.Vec, I)) then
          return False;
        end if;
      end loop;
      return True;
    end Is_Subset;


    function Length(S : Set) return Natural is
    begin
      return Natural(SOAP_Int_Vectors.Length(S.Vec));
    end;


    function "="(A, B : in Set) return Boolean is
    begin
      return SOAP_Int_Vectors."="(A.Vec, B.Vec);
    end;

    procedure Debug_Print(S : in Set) is
    begin
      for I in 0..(Natural(SOAP_Int_Vectors.Length(S.Vec)) - 1) loop
        Ada.Text_IO.Put_Line("Contains: " & SOAP_Int'Image(SOAP_Int_Vectors.Element(S.Vec, I)));
      end loop;
    end;


  end SOAP_Fin_Sets;


  type SOAP_Set is record
    Is_Complement : Boolean;
    Contents      : SOAP_Fin_Sets.Set;
  end Record;


  type Arg_Info is record
    Code : SU.Unbounded_String;
    Loose : Boolean;
  end record;


  function Parse_Args return Arg_Info is
    Current : SU.Unbounded_String;
    I       : Natural := 1;
    InfoLoc : Arg_Info;  
  begin
    InfoLoc.Code := SU.To_Unbounded_String("");
    while I <= Ada.Command_Line.Argument_Count loop
      Current := SU.To_Unbounded_String(Ada.Command_Line.Argument(I));
      --Ada.Text_IO.Put_Line("arg: " & SU.To_String(Current));
      if SU.Length(Current) < 2 then
        raise Cmd_Arg_Exception with  "Invalid command line "   &
                                      "argument "               &
                                      SU.To_String(Current)     &
                                      ". Arguments must be "    &
                                      "longer than 1 character";
      end if;
      if SU.Element(Current, 1) /= '-' then
        raise Cmd_Arg_Exception with  "Invalid command line "   &
                                      "argument "               &
                                      SU.To_String(Current)     &
                                      ". Arguments must begin " &
                                      "with a dash.";
      end if;
      case SU.Element(Current, 2) is
        when 'E' =>
          if SU.Length(Current) < 3 then
            raise Cmd_Arg_Exception with  "Invalid command "        &
                                          "line argument "          &
                                          SU.To_String(Current)     &
                                          ". -E must be "           &
                                          "followed by code (in "   &
                                          "the same argument, not " &
                                          "the next one).";
          end if;
          InfoLoc.Code := SU."&"(
            InfoLoc.Code,
            SU.Slice(Current, 3, SU.Length(Current)));
          --Ada.Text_IO.Put_Line("Code: " & SU.To_String(InfoLoc.Code));
        when 'C' =>
          InfoLoc.Code := SU."&"(InfoLoc.Code, Character'Val(
            Integer'Value(SU.To_String(SU.Unbounded_Slice(
              Current, 3, SU.Length(Current))))
          ));
        --Not currently working.
        when 'f' =>
          declare
            use Ada.Text_IO;
            F : File_Type;
            Chr : Character;
          begin
            Create(
              F, In_File,
              SU.Slice(Current, 3, SU.Length(Current))
            );
            Put_Line("filename:" & SU.Slice(Current, 3, SU.Length(Current)));
            while not End_Of_File(F) loop
              Get(F, Chr);
              InfoLoc.Code := SU."&"(InfoLoc.Code, Chr);
            end loop;
            Close(F);
          end;
          Ada.Text_IO.Put_Line("Code: " & SU.To_String(InfoLoc.Code));
        when 'l' =>
          InfoLoc.Loose := True;
        when others =>
          raise Cmd_Arg_Exception with  "Invalid command "    &
                                        "line argument "      &
                                        SU.To_String(Current) &
                                        ".";
      end case;
      I := I + 1;
    end loop;
    --Ada.Text_IO.Put_Line("parsed args");
    --This is a dumb solution, I know.
    --There's a bug where it ignores the last character of the code, and
    --this is my fix.
    InfoLoc.Code := SU."&"(InfoLoc.Code, " ");
    return InfoLoc;
  end Parse_Args;


  Info : Arg_Info := Parse_Args;


  type Command_Type is (
    Flip,
    Print,
    Union,
    Intersection,
    Difference,
    Reverse_Difference,
    Complement,
    Loop_Subset,
    Loop_Proper_Subset,
    Loop_Not_Subset,
    Loop_Superset,
    Loop_Proper_Superset,
    Loop_Not_Superset,
    Loop_Equal,
    Increment,
    Decrement,
    Input_Char,
    Check_Char,
    Extension,
    Noop
  );


  type Command;


  type Command_Acc is access Command;


  package Command_Vec is new Ada.Containers.Vectors(
    Element_Type => Command_Acc,
    Index_Type => Natural
  );


  type Command is record
    Cmd_Type : Command_Type;
    Arg_Int  : SOAP_Int;
    Arg_Char : Character;
    Arg_Set  : SOAP_Set;
    Arg_Code : Command_Vec.Vector;
    Arg_Ext  : SU.Unbounded_String;
  end record;


  Commands : Command_Vec.Vector;


  package Parsing is
    Continue_Parsing    : Boolean := True;
    Code_Pos            : Natural := 0;


    function Behead return Character;
    function Seehead return Character;
    function Parse_Ternary return SOAP_Int;
    function Parse_Character return Character;
    function Parse_Set return SOAP_Fin_Sets.Set;
    function Parse_Command return Command;
    function Parse_Command_List (End_Char : Character)
      return Command_Vec.Vector;
    function Remove_Comments(Code : SU.Unbounded_String)
      return SU.Unbounded_String;
  end Parsing;


  package body Parsing is


    function Behead return Character is
      Chr : Character;
    begin
      if not SU."="(Info.Code, "") then
        Chr := SU.Element(Info.Code, 1);
        Info.Code := SU.Delete(Info.Code, 1, 2);
      else
        Chr := ' ';
        Continue_Parsing := False;
      end if;
      Code_Pos := Code_Pos + 1;
      --Ada.Text_IO.Put_Line("beheaded char: " & Character'Image(Chr));
      return Chr;
    end Behead;


    function Seehead return Character is
    begin
      if not SU."="(Info.Code, "") then
        return SU.Element(Info.Code, 1);
      else
        Continue_Parsing := False;
        return ' ';
      end if;
    end Seehead;


    function Parse_Ternary return SOAP_Int is
      Accumulator : SOAP_Int := 0;
      Chr         : Character;
    begin
      Chr := Seehead;
      if Chr = '%' then
        Chr := Behead;
        return -1;
      end if;
      while Chr = '0' or Chr = '1' or Chr = '2' loop
        Chr := Behead;
        Accumulator := Accumulator * 3;
        case Chr is
          when '0' =>
            Accumulator := Accumulator;
          when '1' =>
            Accumulator := Accumulator + 1;
          when '2' =>
            Accumulator := Accumulator + 2;
          when others =>
            null;
        end case;
        Chr := Seehead;
      end loop;
      return Accumulator;
    end Parse_Ternary;


    function Parse_Character return Character is
    begin
      return Behead;
    end Parse_Character;


    function Parse_Set return SOAP_Fin_Sets.Set is
      Chr   : Character;
      Total : SOAP_Fin_Sets.Set := SOAP_Fin_Sets.Empty_Set;
    begin
      Chr := Behead;
      if Chr = 'E' then
        return SOAP_Fin_Sets.Empty_Set;
      elsif Chr = '{' then
        while Chr /= '}' loop
          SOAP_Fin_Sets.Include(Total, Parse_Ternary);
          Chr := Behead;
          if Chr /= ',' and Chr /= '}' then
            raise SOAP_Syntax_Exception with "',' or '}' expected "  &
                                             "at character "         &
                                             Natural'Image(Code_Pos) &
                                             ".";
          end if;
        end loop;
      end if;
      return Total;
    end Parse_Set;


    function Parse_Command return Command is
      Chr              : Character;
      Building_Command : Command;
    begin
      --Ada.Text_IO.Put_Line("starting to parse command");
      Chr := Behead;
      if not Continue_Parsing then
        Building_Command.Cmd_Type := Noop;
        return Building_Command;
      end if;
      --Ada.Text_IO.Put_Line("chr = " & Character'Image(Chr));
      if Character'Image(Chr) = "'''" then
        Building_Command.Cmd_Type := Check_Char;
        Building_Command.Arg_Char := Parse_Character;
        Building_Command.Arg_Code := Parse_Command_List(Character'Val(92));
        return Building_Command;
      end if;
      case Chr is
        when '*' =>
          Building_Command.Cmd_Type := Flip;
          Building_Command.Arg_Int  := Parse_Ternary;
        when '"' =>
          Building_Command.Cmd_Type := Print;
          Building_Command.Arg_Char := Parse_Character;
        when 'U' =>
          Building_Command.Cmd_Type := Union;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
        when 'I' =>
          Building_Command.Cmd_Type := Intersection;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
        when '-' =>
          Building_Command.Cmd_Type := Difference;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
        when '_' =>
          Building_Command.Cmd_Type := Reverse_Difference;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
        when 'c' =>
          Building_Command.Cmd_Type := Complement;
        when 's' =>
          Building_Command.Cmd_Type := Loop_Subset;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
          Building_Command.Arg_Code := Parse_Command_List(']');
        when 'p' =>
          Building_Command.Cmd_Type := Loop_Proper_Subset;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
          Building_Command.Arg_Code := Parse_Command_List(']');
        when 'n' =>
          Building_Command.Cmd_Type := Loop_Not_Subset;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
          Building_Command.Arg_Code := Parse_Command_List(']');
        when 'S' =>
          Building_Command.Cmd_Type := Loop_Superset;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
          Building_Command.Arg_Code := Parse_Command_List(']');
        when 'P' =>
          Building_Command.Cmd_Type := Loop_Proper_Superset;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
          Building_Command.Arg_Code := Parse_Command_List(']');
        when 'N' =>
          Building_Command.Cmd_Type := Loop_Not_Superset;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
          Building_Command.Arg_Code := Parse_Command_List(']');
        when '=' =>
          Building_Command.Cmd_Type := Loop_Equal;
          Building_Command.Arg_Set  := SOAP_Set'(Contents => Parse_Set, Is_Complement => False);
          Building_Command.Arg_Code := Parse_Command_List(']');
        when ':' =>
          Building_Command.Cmd_Type := Increment;
        when ';' =>
          Building_Command.Cmd_Type := Decrement;
        when '~' =>
          Building_Command.Cmd_Type := Input_Char;
        when '$' =>
          Chr := Behead;
          if Chr /= '^' then
            raise SOAP_Syntax_Exception with "'^' expected at code index " &
                                             Natural'Image(Code_Pos) & ".";
          end if;
          Chr := Behead;
          if Chr /= '!' and Chr /= '?' then
            raise SOAP_Syntax_Exception with "'!' or '?' expected at " &
                                             "code index "             &
                                             Natural'Image(Code_Pos)   &
                                             ".";
          end if;
          Building_Command.Arg_Ext :=
            SU.To_Unbounded_String(Character'Image(Chr));
          while Chr /= '@' loop
            Building_Command.Arg_Ext :=
              SU."&"(Building_Command.Arg_Ext, Character'Image(Chr));
            Chr := Behead;
          end loop;
          Building_Command.Cmd_Type := Extension;
        when others =>
          if not Info.Loose then
            raise SOAP_Syntax_Exception with  "Invalid command "      &
                                              Character'Image(Chr)    &
                                              " at index "            &
                                              Natural'Image(Code_Pos) &
                                              ".";
          end if;
          Building_Command.Cmd_Type := Noop;
      end case;
      return Building_Command;
    end Parse_Command;


    function Parse_Command_List(End_Char : Character)
    return Command_Vec.Vector is
      Chr      : Character;
      Com      : Command;
      Com_Acc  : Command_Acc;
      Local_Commands : Command_Vec.Vector;
    begin
      Chr := Behead;
      while Chr /= End_Char loop
        Com              := Parse_Command;
        Com_Acc          := new Command;
        Com_Acc.Cmd_Type := Com.Cmd_Type;
        Com_Acc.Arg_Int  := Com.Arg_Int;
        Com_Acc.Arg_Char := Com.Arg_Char;
        Com_Acc.Arg_Set  := Com.Arg_Set;
        Com_Acc.Arg_Code := Com.Arg_Code;
        Com_Acc.Arg_Ext  := Com.Arg_Ext;
        Command_Vec.Append(Local_Commands, Com_Acc);
        Chr := Seehead;
        --Ada.Text_IO.Put_Line("list chr = " & Chr);
      end loop;
      Chr := Behead;
      return Local_Commands;
    end Parse_Command_List;


    function Remove_Comments (Code : SU.Unbounded_String)
    return SU.Unbounded_String is
      Building_Str : SU.Unbounded_String := SU.To_Unbounded_String("");
      Pos          : Positive := 1;
    begin
      --Ada.Text_IO.Put_Line("starting to remove comments");
      if SU.Element(Code, 1) = '#' then
        while SU.Element(Code, Pos) /= Ada.Characters.Latin_1.LF and
              SU.Element(Code, Pos) /= Ada.Characters.Latin_1.CR loop
          Pos := Pos + 1;
        end loop;
      end if;
      while Pos < SU.Length(Code) loop
        if SU.Length(Code) > (Pos + 2) then
          if (SU.Slice(Code, Pos, 2) = "$^" and
            SU.Element(Code, Pos + 2) /= '!' and
            SU.Element(Code, Pos + 2) /= '?')
          then
            while SU.Element(Code, Pos) /= '@' loop
              Pos := Pos + 1;
            end loop;
              Pos := Pos + 1;
          end if;
        end if;
        Building_Str := SU."&"(Building_Str, SU.Slice(Code, Pos, Pos + 1));
        Pos := Pos + 1;
      end loop;
      --Ada.Text_IO.Put_Line("finished removing comments");
      return Building_Str;
    end Remove_Comments;
  end Parsing;


  procedure Parse_Code is
    Com     : Command;
    Com_Acc : Command_Acc;
  begin
    Info.Code := Parsing.Remove_Comments(Info.Code);
    --Ada.Text_IO.Put_Line("after comment removal: " & SU.To_String(Info.Code));
    while Parsing.Continue_Parsing loop
      Com := Parsing.Parse_Command;
      if not Parsing.Continue_Parsing then
        exit;
      end if;
      Com_Acc := new Command;
      Com_Acc.Cmd_Type := Com.Cmd_Type;
      Com_Acc.Arg_Int  := Com.Arg_Int;
      Com_Acc.Arg_Char := Com.Arg_Char;
      Com_Acc.Arg_Set  := Com.Arg_Set;
      Com_Acc.Arg_Code := Com.Arg_Code;
      Com_Acc.Arg_Ext  := Com.Arg_Ext;
      Command_Vec.Append(Commands, Com_Acc);
    end loop;
  end Parse_Code;


  procedure Execute_SOAP is
    Mem      : SOAP_Set;
    MemIndex : SOAP_Int := 1;
    Current_Char : Character := ' ';


    function Has_Element(A : SOAP_Set; Elem : SOAP_Int) return boolean is
    begin
      return A.Is_Complement xor SOAP_Fin_Sets.Has_Element(A.Contents, Elem);
    end Has_Element;


    function Is_Subset(A, B : SOAP_Set) return boolean is
    begin
      if A.Is_Complement and B.Is_Complement then
        return (SOAP_Fin_Sets.Is_Subset(A.Contents, B.Contents));
      elsif (not A.Is_Complement) and B.Is_Complement then
        return not (SOAP_Fin_Sets.Is_Subset(A.Contents, B.Contents) or SOAP_Fin_Sets.Is_Subset(B.Contents, A.Contents));
      elsif A.Is_Complement and (not B.Is_Complement) then
        return false;
      else
        --Ada.Text_IO.Put_Line("is_subset - no complements");
        return (SOAP_Fin_Sets.Is_Subset(A.Contents, B.Contents));
      end if;
    end Is_Subset;


    function Is_Proper_Subset(A, B : SOAP_Set) return boolean is
    begin
      if A.Is_Complement and B.Is_Complement then
        return
          (Is_Subset(A, B) and not SOAP_Fin_Sets."="(A.Contents, B.Contents))
        and
          (Integer(SOAP_Fin_Sets.Length(A.Contents)) < Integer(SOAP_Fin_Sets.Length(B.Contents)))
        ;
      elsif (not A.Is_Complement) and B.Is_Complement then
        return not (Is_Subset(A, B) or Is_Subset(B, A) or SOAP_Fin_Sets."="(A.Contents, B.Contents));
      elsif A.Is_Complement and (not B.Is_Complement) then
        return false;
      else
        --Ada.Text_IO.Put_Line("Is_Subset: " & Boolean'Image(Is_Subset(A, B)));
        --Ada.Text_IO.Put_Line("A.Length: " & Integer'Image(Integer(SOAP_Fin_Sets.Length(A.Contents))));
        --Ada.Text_IO.Put_Line("B.Length: " & Integer'Image(Integer(SOAP_Fin_Sets.Length(B.Contents))));
        --Ada.Text_IO.Put_Line("<: " & Boolean'Image(Integer(SOAP_Fin_Sets.Length(A.Contents)) < Integer(SOAP_Fin_Sets.Length(B.Contents))));
        return
          Is_Subset(A, B)
        and
          (Integer(SOAP_Fin_Sets.Length(A.Contents)) < Integer(SOAP_Fin_Sets.Length(B.Contents)))
        ;
      end if;
    end Is_Proper_Subset;


    function Is_Superset(A, B : SOAP_Set) return boolean is
    begin
      return Is_Subset(B, A);
    end Is_Superset;


    function Is_Proper_Superset(A, B : SOAP_Set) return boolean is
    begin
      return Is_Proper_Subset(B, A);
    end Is_Proper_Superset;


    procedure Execute_Command
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc );


    procedure Execute_Flip
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
    begin
      if Com.Arg_Int /= -1 then
        if SOAP_Fin_Sets.Has_Element(Set.Contents, Com.Arg_Int) xor Set.Is_Complement then
          --Ada.Text_IO.Put_Line("Excluding " & SOAP_Int'Image(Com.Arg_Int));
          SOAP_Fin_Sets.Exclude(Set.Contents, Com.Arg_Int);
        else
          --Ada.Text_IO.Put_Line("Including " & SOAP_Int'Image(Com.Arg_Int));
          SOAP_Fin_Sets.Include(Set.Contents, Com.Arg_Int);
        end if;
      else
        if SOAP_Fin_Sets.Has_Element(Set.Contents, Index) xor Set.Is_Complement then
          SOAP_Fin_Sets.Exclude(Set.Contents, Index);
        else
          SOAP_Fin_Sets.Include(Set.Contents, Index);
        end if;
      end if;
    end Execute_Flip;


    procedure Execute_Print
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
      stdout: Ada.Text_IO.File_Type := Ada.Text_IO.Standard_Output;
    begin
      Character'Write(
        Ada.Text_IO.Text_Streams.Stream(stdout),
        Com.Arg_Char
      );
    end Execute_Print;


    procedure Execute_Union
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
    begin
      if Set.Is_Complement then
        SOAP_Fin_Sets.Difference(Set.Contents, Com.Arg_Set.Contents);
      else
        SOAP_Fin_Sets.Union(Set.Contents, Com.Arg_Set.Contents);
      end if;
    end Execute_Union;


    procedure Execute_Intersection
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
      Holder : SOAP_Fin_Sets.Set;
    begin
      if Set.Is_Complement then
        Holder := SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents);
        SOAP_Fin_Sets.Difference(Holder, Set.Contents);
        Set.Contents := Holder;
      else
        SOAP_Fin_Sets.Intersection(Set.Contents, Com.Arg_Set.Contents);
      end if;
    end Execute_Intersection;


    procedure Execute_Difference
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
    begin
      if Set.Is_Complement then
        SOAP_Fin_Sets.Union(Set.Contents, Com.Arg_Set.Contents);
      else
        SOAP_Fin_Sets.Difference(Set.Contents, Com.Arg_Set.Contents);
      end if;
    end Execute_Difference;


    procedure Execute_Reverse_Difference
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
      Holder : SOAP_Fin_Sets.Set;
    begin
      if Set.Is_Complement then
        SOAP_Fin_Sets.Union(Set.Contents, Com.Arg_Set.Contents);
      else
        Holder := SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents);
        SOAP_Fin_Sets.Difference(Holder, Set.Contents);
        Set.Contents := Holder;
      end if;
    end Execute_Reverse_Difference;


    procedure Execute_Complement
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
    begin
      Set.Is_Complement := not Set.Is_Complement;
    end Execute_Complement;


    procedure Execute_Increment
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
    begin
      Index := Index + 1;
    end Execute_Increment;


    procedure Execute_Decrement
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
    begin
      Index := Index - 1;
    end Execute_Decrement;


    procedure Execute_Loop_Subset
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
      Set_Copy : SOAP_Set;
    begin
      Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
      if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
        SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
        SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--      SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
      end if;
      while Is_Subset(Set, Set_Copy) loop
        for I in 0..(Integer(Command_Vec.Length(Com.Arg_Code)) - 1) loop
          Execute_Command(Set, Index, Command_Vec.Element(Com.Arg_Code, I));
        end loop;
        Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
        if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
          SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
          SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--        SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
        end if;
      end loop;
    end Execute_Loop_Subset;


    procedure Execute_Loop_Proper_Subset
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
      Set_Copy : SOAP_Set;
    begin
      Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
      if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
        SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
        SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--      SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
      end if;
      while Is_Proper_Subset(Set, Set_Copy) loop
        for I in 0..(Integer(Command_Vec.Length(Com.Arg_Code)) - 1) loop
          Execute_Command(Set, Index, Command_Vec.Element(Com.Arg_Code, I));
        end loop;
        Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
        if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
          SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
          SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--        SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
        end if;
      end loop;
    end Execute_Loop_Proper_Subset;


    procedure Execute_Loop_Not_Subset
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
      Set_Copy : SOAP_Set;
    begin
      Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
      if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
        SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
        SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--      SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
      end if;
      while not Is_Subset(Set, Set_Copy) loop
        for I in 0..(Integer(Command_Vec.Length(Com.Arg_Code)) - 1) loop
          Execute_Command(Set, Index, Command_Vec.Element(Com.Arg_Code, I));
        end loop;
        Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
        if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
          SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
          SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--        SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
        end if;
      end loop;
    end Execute_Loop_Not_Subset;


    procedure Execute_Loop_Superset
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
      Set_Copy : SOAP_Set;
    begin
      Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
      if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
        SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
        SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--      SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
      end if;
      while Is_Superset(Set, Set_Copy) loop
        for I in 0..(Integer(Command_Vec.Length(Com.Arg_Code)) - 1) loop
          Execute_Command(Set, Index, Command_Vec.Element(Com.Arg_Code, I));
        end loop;
        Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
        if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
          SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
          SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--        SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
        end if;
      end loop;
    end Execute_Loop_Superset;


    procedure Execute_Loop_Proper_Superset
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
      Set_Copy : SOAP_Set;
    begin
      Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
      if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
        SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
        SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--      SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
      end if;
      while Is_Proper_Superset(Set, Set_Copy) loop
        for I in 0..(Integer(Command_Vec.Length(Com.Arg_Code)) - 1) loop
          Execute_Command(Set, Index, Command_Vec.Element(Com.Arg_Code, I));
        end loop;
        Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
        if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
          SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
          SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--        SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
        end if;
      end loop;
    end Execute_Loop_Proper_Superset;


    procedure Execute_Loop_Not_Superset
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
      Set_Copy : SOAP_Set;
    begin
      Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
      if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
        SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
        SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--      SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
      end if;
      while not Is_Superset(Set, Set_Copy) loop
        for I in 0..(Integer(Command_Vec.Length(Com.Arg_Code)) - 1) loop
          Execute_Command(Set, Index, Command_Vec.Element(Com.Arg_Code, I));
        end loop;
        Set_Copy := SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => false);
        if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
          SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
          SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--        SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
        end if;
      end loop;
    end Execute_Loop_Not_Superset;


    procedure Execute_Loop_Equal
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
      Set_Copy : SOAP_Set;
    begin
      if Set.Is_Complement then
        return;
      end if;
      if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
        SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
        SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--      SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
      end if;
      while SOAP_Fin_Sets."="(Set.Contents, Com.Arg_Set.Contents) and (Set.Is_Complement = Com.Arg_Set.Is_Complement) loop
        for I in 0..(Integer(Command_Vec.Length(Com.Arg_Code)) - 1) loop
          Execute_Command(Set, Index, Command_Vec.Element(Com.Arg_Code, I));
        end loop;
        if SOAP_Fin_Sets.Has_Element(Set_Copy.Contents, SOAP_Int(-1)) then
          SOAP_Fin_Sets.Exclude(Set_Copy.Contents, SOAP_Int(-1));
          SOAP_Fin_Sets.Include(Set_Copy.Contents, Index);
--        SOAP_Fin_Sets.Debug_Print(Set_Copy.Contents);
        end if;
      end loop;
    end Execute_Loop_Equal;


    procedure Execute_Input_Char
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
    begin
      Ada.Text_IO.Get(Current_Char);
    end Execute_Input_Char;


    procedure Execute_Check_Char
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
    begin
      if Current_Char = Com.Arg_Char then
        for I in 0..(Integer(Command_Vec.Length(Com.Arg_Code)) - 1) loop
          Execute_Command(Set, Index, Command_Vec.Element(Com.Arg_Code, I));
        end loop;
      end if;
    end Execute_Check_Char;


    procedure Execute_Command
    ( Set: in out SOAP_Set;
      Index: in out SOAP_Int;
      Com: in Command_Acc ) is
--      Com_Copy : Command_Acc := new Command'(
--        Cmd_Type => Com.Cmd_Type, 
--        Arg_Int  => Com.Arg_Int,
--        Arg_Char => Com.Arg_Char,
--        Arg_Code => Com.Arg_Code,
--        Arg_Ext  => Com.Arg_Ext,
--        Arg_Set  => SOAP_Set'(Contents => SOAP_Fin_Sets.Clone(Com.Arg_Set.Contents), Is_Complement => False)
--      );
    begin
--      --Handle percent variable in literal set.
--      if SOAP_Fin_Sets.Has_Element(Com_Copy.Arg_Set.Contents, SOAP_Int(-1)) then
--        Ada.Text_IO.Put_Line("Found variable");
--        SOAP_Fin_Sets.Exclude(Com_Copy.Arg_Set.Contents, SOAP_Int(-1));
--        SOAP_Fin_Sets.Include(Com_Copy.Arg_Set.Contents, Index);
--      end if;
      case Com.Cmd_Type is
        when Flip =>
          Execute_Flip(Set, Index, Com);
        when Print =>
          Execute_Print(Set, Index, Com);
        when Union =>
          Execute_Union(Set, Index, Com);
        when Intersection =>
          Execute_Intersection(Set, Index, Com);
        when Difference =>
          Execute_Difference(Set, Index, Com);
        when Reverse_Difference =>
          Execute_Reverse_Difference(Set, Index, Com);
        when Complement =>
          Execute_Complement(Set, Index, Com);
        when Increment =>
          Execute_Increment(Set, Index, Com);
        when Decrement =>
          Execute_Decrement(Set, Index, Com);
        when Loop_Subset =>
          Execute_Loop_Subset(Set, Index, Com);
        when Loop_Proper_Subset =>
          Execute_Loop_Proper_Subset(Set, Index, Com);
        when Loop_Not_Subset =>
          Execute_Loop_Not_Subset(Set, Index, Com);
        when Loop_Superset =>
          Execute_Loop_Superset(Set, Index, Com);
        when Loop_Proper_Superset =>
          Execute_Loop_Proper_Superset(Set, Index, Com);
        when Loop_Not_Superset =>
          Execute_Loop_Not_Superset(Set, Index, Com);
        when Loop_Equal =>
          Execute_Loop_Equal(Set, Index, Com);
        when Input_Char =>
          Execute_Input_Char(Set, Index, Com);
        when Check_Char =>
          Execute_Check_Char(Set, Index, Com);
        when Extension =>
          null;
        when Noop =>
          null;
      end case;
    end Execute_Command;


  begin
    Mem.Contents := SOAP_Fin_Sets.Empty_Set;
    Mem.Is_Complement := False;
    for I in 0..Command_Vec.Last_Index(Commands) loop
      Execute_Command(Mem, MemIndex, Command_Vec.Element(Commands, I));
    end loop;
  end Execute_SOAP;


begin
  Parse_Code;
  Execute_SOAP;
end Detergent;

