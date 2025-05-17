' A few years ago I made a project in Scratch which simulated a queue-based operating system I called Kronos-QOS.
' It was never publicly released but many days of programming and brainstorming went into it.
' Nowadays, I think I put more effort into it then it was worth.
'
' Kronos-QOS came with a programming language known as Kyu.
' It was a very bad programming language, but I thought I would try to break it out of its original environment
' and make it into an actual programming language.
'
' The code that follows is an interpreter/environment for Kyu to run on a Windows computer.
' (Not tested on Mac or Linux, but will probably work.)
' (It also has a small bit of raw Kronos-QOS functionality, such as barebones queue manipulation commands
' and the queue filesystem.)

#Const ServerRequestBacklogLimitLevel = 1

Imports System.IO
Imports System.Collections.Concurrent
Imports System.Text.RegularExpressions
Imports System.Net
Imports System.Net.Sockets
Module Module1

    Dim Filename As String
    Dim ServerSocket As Socket
    Dim ServerMode As Boolean = False
    Sub Main(Args() As String)
        If Not Directory.Exists("kyu_env") Then
            Directory.CreateDirectory("kyu_env")
            Directory.CreateDirectory("kyu_env/matrices")
            File.Create("kyu_env/queue.txt")
            Console.WriteLine("Environment created.")
            Console.WriteLine("Please create a Kyu script to start.")
            Console.WriteLine("Then,  put it in commandline arguments to this program.")
            Console.WriteLine("Alternatively, you can provide the filename as input.")
            Console.WriteLine("")
            Console.WriteLine("Press any key to close.")
            Console.ReadKey()
            Environment.Exit(0)
        End If
ActionQuestion:
        Console.WriteLine("What do you want to do?")
        Console.WriteLine("1 - Base commands")
        Console.WriteLine("2 - Run Kyu scripts")
        Console.WriteLine("3 - Run Kyu scripts - server mode")
        Dim Answer As String = Console.ReadLine
        If Answer = "1" Then
            BaseCommands(Args)
        ElseIf Answer = "2" Then
            RunKyu(Args, False)
        ElseIf Answer = "3" Then
            ServerMode = True
            ServerSocket = New Socket(New SocketInformation())
            Dim IpHost As IPHostEntry = Dns.GetHostEntry("localhost")
            Dim Ip As IPAddress = IpHost.AddressList(0)
            Dim Port As Int32
RetryPort:
            If Not Int32.TryParse(Console.ReadLine(), Port) Then
                GoTo RetryPort
            End If
            Dim LocalEndPoint As New IPEndPoint(Ip, Port)
            ServerSocket.Bind(LocalEndPoint)
#If ServerRequestBacklogLimitLevel = 0 Then
            ServerSocket.Listen(1)
#ElseIf ServerRequestBacklogLimitLevel = 1 Then
            ServerSocket.Listen(5)
#ElseIf ServerRequestBacklogLimitLevel = 2 Then
            ServerSocket.Listen(10)
#Else
            ServerSocket.Listen(25)
#End If
            RunKyu(Args, False)
        Else
            GoTo ActionQuestion
        End If
    End Sub

    Sub BaseCommands(Args() As String)
        While True
            Dim Command As String = Console.ReadLine().ToLower()
            Select Case Command
                Case "create"
                    If True Then ' Using this to create a local scope since Visual Basic does not have curly braces.
                        Console.WriteLine("Please enter the name of your file.")
                        Dim Name As String = Console.ReadLine()
                        Console.WriteLine("Please enter the number of entries in your file.")
                        Dim Length As Int32 = Int32.Parse(Console.ReadLine())
                        Console.WriteLine("Please type in all entries. Type '@FileEnd' to quit this mode.")
                        Dim Contents As New List(Of String)
                        For I As Int32 = 1 To Length
                            Dim Entry As String = Console.ReadLine()
                            If Entry = "@FileEnd" Then
                                Exit For
                            End If
                            Contents.Add(Entry)
                        Next
                        Dim Writer As New StreamWriter("kyu_env/queue.txt", True)
                        Try
                            Writer.WriteLine("File:" & Name)
                            For Each I In Contents
                                Writer.WriteLine(I)
                            Next
                            Writer.WriteLine("@FileEnd")
                        Finally
                            Writer.Flush()
                            Writer.Dispose()
                        End Try
                    End If
                Case "move"
                    If True Then
                        Dim FileContents As New List(Of String)
                        Dim RemainingContents As New List(Of String)
                        Dim Split() As String
                        Dim Reader As New StreamReader("kyu_env/queue.txt")
                        Try
                            Split = Reader.ReadToEnd().Split(vbLf).Select(Of String)(Function(X) X.Trim()).ToArray()
                        Finally
                            Reader.Dispose()
                        End Try
                        Dim I As Int32 = 0
                        While Split(I) <> "@FileEnd"
                            FileContents.Add(Split(I))
                            I += 1
                        End While
                        FileContents.Add(Split(I))
                        I += 1
                        While I < Split.Length - 1 ' Removing the last element, which will be empty because of the extra newline inserted after the last entry.
                            RemainingContents.Add(Split(I))
                            I += 1
                        End While
                        Dim Writer As New StreamWriter("kyu_env/queue.txt")
                        Try
                            For Each J In RemainingContents
                                Writer.WriteLine(J)
                            Next
                            For Each J In FileContents
                                Writer.WriteLine(J)
                            Next
                        Finally
                            Writer.Flush()
                            Writer.Dispose()
                        End Try
                    End If
                Case "execute"
                    If True Then
                        Dim Split As List(Of String)
                        Dim KyuWords As New List(Of String)
                        Dim Reader As New StreamReader("kyu_env/queue.txt")
                        Try
                            Split = Reader.ReadToEnd().Split(vbLf).Select(Of String)(Function(S) S.Trim()).ToList()
                        Finally
                            Reader.Dispose()
                        End Try
                        Dim I As Int32 = 0
                        If Not Split(I).StartsWith("File:") Then
                            Console.WriteLine("First entry should be a file start.")
                            Exit Select
                        End If
                        I += 1
                        If Split(I) <> "@script" Then
                            Console.WriteLine("Second entry should be ""@script""")
                            Exit Select
                        End If
                        While I < Split.Count - 1
                            If Split(I) = "@FileEnd" Then
                                Exit While
                            End If
                            For Each J In New Regex("\s+").Split(Split(I))
                                KyuWords.Add(J)
                            Next
                            I += 1
                        End While
                        RunKyu(Args, KyuWords, True, False)
                        Console.WriteLine("Press any key to resume the Kronos-QOS Shell.")
                        Console.ReadKey()
                    End If
                Case "find"
                    If True Then
                        Console.WriteLine("Please enter the name of the file you would like to find.")
                        Dim Name As String = Console.ReadLine()
                        Dim FileContents As New List(Of String)
                        Dim RemainingContents As New List(Of String)
                        Dim Split() As String
                        Dim Reader As New StreamReader("kyu_env/queue.txt")
                        Try
                            Split = Reader.ReadToEnd().Split(vbLf).Select(Of String)(Function(X) X.Trim()).ToArray()
                        Finally
                            Reader.Dispose()
                        End Try
                        Dim I As Int32 = 0
                        While Split(I) <> "File:" & Name
                            FileContents.Add(Split(I))
                            I += 1
                            If I >= Split.Length Then
                                Console.WriteLine("File '" & Name & "' not found.")
                                Exit Select
                            End If
                        End While
                        While I < Split.Length - 1 ' Removing the last element, which will be empty because of the extra newline inserted after the last entry.
                            RemainingContents.Add(Split(I))
                            I += 1
                        End While
                        Dim Writer As New StreamWriter("kyu_env/queue.txt")
                        Try
                            For Each J In RemainingContents
                                Writer.WriteLine(J)
                            Next
                            For Each J In FileContents
                                Writer.WriteLine(J)
                            Next
                        Finally
                            Writer.Flush()
                            Writer.Dispose()
                        End Try
                    End If
                Case "push"
                    If True Then
                        Console.WriteLine("Please enter the entry to push.")
                        Dim Entry As String = Console.ReadLine()
                        Dim Writer As New StreamWriter("kyu_env/queue.txt", True)
                        Try
                            If Entry <> "" Then
                                Writer.WriteLine(Entry)
                            Else
                                Console.WriteLine("Empty entries not allowed.")
                            End If
                        Finally
                            Writer.Flush()
                            Writer.Dispose()
                        End Try
                    End If
                Case "pop"
                    If True Then
                        Dim RemainingContents As New List(Of String)
                        Dim Split() As String
                        Dim Reader As New StreamReader("kyu_env/queue.txt")
                        Try
                            Split = Reader.ReadToEnd().Split(vbLf).Select(Of String)(Function(X) X.Trim()).ToArray()
                        Finally
                            Reader.Dispose()
                        End Try
                        Dim Writer As New StreamWriter("kyu_env/queue.txt")
                        Try
                            For I As Int32 = 1 To Split.Length - 1
                                If Split(I) <> "" Then
                                    Writer.WriteLine(Split(I))
                                End If
                            Next
                        Finally
                            Writer.Flush()
                            Writer.Dispose()
                        End Try
                    End If
                Case "shift"
                    If True Then
                        Dim Entry As String
                        Dim RemainingContents As New List(Of String)
                        Dim Split() As String
                        Dim Reader As New StreamReader("kyu_env/queue.txt")
                        Try
                            Split = Reader.ReadToEnd().Split(vbLf).Select(Of String)(Function(X) X.Trim()).ToArray()
                        Finally
                            Reader.Dispose()
                        End Try
                        Entry = Split(0)
                        Dim Writer As New StreamWriter("kyu_env/queue.txt")
                        Try
                            For I As Int32 = 1 To Split.Length - 2
                                If Split(I) <> "" Then
                                    Writer.WriteLine(Split(I))
                                End If
                            Next
                            Writer.WriteLine(Entry)
                        Finally
                            Writer.Flush()
                            Writer.Dispose()
                        End Try
                    End If
                Case "view"
                    If True Then
                        Dim Reader As New StreamReader("kyu_env/queue.txt")
                        Try
                            Console.WriteLine(Reader.ReadToEnd())
                        Finally
                            Reader.Dispose()
                        End Try
                    End If
                Case Else
                    Console.WriteLine("Invalid command: '" & Command & "'.")
            End Select
        End While
    End Sub

    Sub RunKyu(Args() As String, IsEmbedded As Boolean)
        RunKyu(Args, IsEmbedded, Nothing)
    End Sub
    Sub RunKyu(Args() As String, IsEmbedded As Boolean, Connection As Socket)
        If Args.Length >= 2 Then
            Filename = Args(1)
        Else
            Filename = Console.ReadLine()
        End If
        Filename = "kyu_env/" & Filename
        Dim KyuWords As List(Of String)
        Dim Reader As New StreamReader(Filename)
        Try
            KyuWords = New Regex("\s+").Split(Reader.ReadToEnd()).ToList()
        Finally
            Reader.Dispose()
        End Try
        RunKyu(Args, KyuWords, False, IsEmbedded, Connection)
    End Sub

    Dim GlobalConstants As New ConcurrentDictionary(Of String, String)

    Sub RunKyu(Args() As String, KyuWords As List(Of String), AddToQueue As Boolean, IsEmbedded As Boolean)
        RunKyu(Args, KyuWords, AddToQueue, IsEmbedded, Nothing)
    End Sub

    ' Everything with an index is 1-based. This includes function memory,
    ' the code, strings, matrices, etc.
    ' Note: Anything that starts with &&& is new and wasn't in the original Kyu.
    Sub RunKyu(Args() As String, KyuWords As List(Of String), AddToQueue As Boolean, IsEmbedded As Boolean, Connection As Socket)
        Dim I As Int32 = 0
        Dim FuncMem As New List(Of String)
        Dim FileMem As New List(Of String)
        Dim Current As String
        Dim Current2 As String
        Dim UpdatedWords As New Dictionary(Of Int32, String)
        While I < KyuWords.Count
            If KyuWords(I) = "@ScriptEnd" Then
                Exit While
            ElseIf KyuWords(I) = "@@@push" Then
                ' Adds the word following it to the end of function memory.
                ' @@@[current] adds the current value.
                ' @@@[current2] adds the 2nd current value.
                ' @@@[funcmem] grabs an additional entry for a position, and grabs the entry in function memory.
                Try
                    I += 1
                    If KyuWords(I) = "@@@[current]" Then
                        FuncMem.Add(Current)
                    ElseIf KyuWords(I) = "@@@[current2]" Then
                        FuncMem.Add(Current2)
                    ElseIf KyuWords(I) = "@@@[funcmem]" Then
                        I += 1
                        FuncMem.Add(FuncMem(KyuWords(I) - 1))
                    Else
                        FuncMem.Add(KyuWords(I))
                    End If
                Catch ex As Exception
                    Console.WriteLine("Error with @@@push. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@skip" Then
                ' Skips ahead n commands, where n is the current value.
                ' It's like a really horrible knockoff of goto.
                '
                ' Originally this and @@@skipback were the only flow control,
                ' before I realized it was unworkable.
                Try
                    I += Int32.Parse(Current)
                Catch ex As Exception
                    Console.WriteLine("Error with @@@skip. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@skipback" Then
                ' Like @@@skip, but skips n commands backwards instead of forwards.
                Try
                    I -= Int32.Parse(Current)
                Catch ex As Exception
                    Console.WriteLine("Error with @@@skipback. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@set1" Then
                ' Sets the current value to an string.
                ' If the string happens to be @@@[funcmem], grabs one more entry and gets the value in function memory.
                '
                ' This used to be @@@getmem, until I added a second current value for math.
                I += 1
                Try
                    If KyuWords(I) = "@@@[funcmem]" Then
                        I += 1
                        Current = FuncMem(Int32.Parse(KyuWords(I)) - 1)
                    Else
                        Current = KyuWords(I)
                    End If
                Catch ex As Exception
                    Console.WriteLine("Error with @@@set1. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@set2" Then
                ' Sets the second current value to an string.
                ' If the string happens to be @@@[funcmem], grabs one more entry and gets the value in function memory.
                I += 1
                Try
                    If KyuWords(I) = "@@@[funcmem]" Then
                        I += 1
                        Current = FuncMem(Int32.Parse(KyuWords(I)) - 1)
                    Else
                        Current = KyuWords(I)
                    End If
                Catch ex As Exception
                    Console.WriteLine("Error with @@@set1. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@makefile" Then
                ' Creates a file in file memory, ready to be put in the queue when the script terminates.
                '
                ' This has absolutely nothing to do with Linux Makefiles.
                ' I didn't know about those when I made the project on scratch,
                ' and I want to make this as faithful as possible, so I won't change the name.
                Try
                    I += 1
                    Dim Name As String = KyuWords(I)
                    I += 1
                    Dim Length As Int32 = Integer.Parse(KyuWords(I))
                    I += 1
                    Dim Contents As New List(Of String)
                    For J As Int32 = 1 To Length
                        If KyuWords(I) = "@@@[funcmem]" Then
                            I += 1
                            Contents.Add(FuncMem(Int32.Parse(KyuWords(I)) - 1))
                        Else
                            Contents.Add(KyuWords(I))
                        End If
                        I += 1
                    Next
                    FileMem.Add("File:" & Name)
                    For Each J In Contents
                        FileMem.Add(J)
                    Next
                    FileMem.Add("@FileEnd")
                Catch ex As Exception
                    Console.WriteLine("Error with @@@makefile. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@add" Then
                ' Stores current + current2 into current
                Try
                    Current = Int32.Parse(Current) + Int32.Parse(Current2)
                Catch ex As Exception
                    Console.WriteLine("Error with @@@add. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@sub" Then
                ' Stores current - current2 into current
                Try
                    Current = Int32.Parse(Current) - Int32.Parse(Current2)
                Catch ex As Exception
                    Console.WriteLine("Error with @@@sub. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@mult" Then
                ' Stores current * current2 into current
                Try
                    Current = Int32.Parse(Current) * Int32.Parse(Current2)
                Catch ex As Exception
                    Console.WriteLine("Error with @@@mult. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@div" Then
                ' Stores current / current2 into current
                Try
                    Current = Int32.Parse(Current) / Int32.Parse(Current2)
                Catch ex As Exception
                    Console.WriteLine("Error with @@@div. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@mod" Then
                ' Stores current Mod current2 into current
                Try
                    Current = Int32.Parse(Current) Mod Int32.Parse(Current2)
                Catch ex As Exception
                    Console.WriteLine("Error with @@@mod. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@console" Then
                ' Prints the next word in the script to the console.
                '
                ' Originally, there was no such thing as printing anything other than constant strings.
                ' However, when I added self-modifying code, this was effectively added.
                ' Self-modifying code is the only way to have any sort of non-constant output directly to the console.
                '
                ' Also, due to it having to be one entry, typically spaces cannot be output, even with self-modifying code.
                ' However, since input allows the entry of whitespace, the program can ask the user to input a space,
                ' and then a combination of self-modification and concatenation, spaces can actually be output.
                Try
                    I += 1
                    Console.WriteLine(KyuWords(I))
                Catch ex As Exception
                    Console.WriteLine("Error with @@@console. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@integrate" Then
                ' Takes two positions forming a range in function memory.
                ' Writes that onto the end of the code.
                '
                ' The first self-modifying code construct.
                ' It used to be that the entries in function memory had to have "$" prepended to them in order to integrate,
                ' for some reason unknown to me today.
                ' I eventually realized that was a useless requirement and removed it,
                ' so now the code is directly inserted.
                Try
                    I += 1
                    Dim Start As Integer = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim [End] As Integer = Int32.Parse(KyuWords(I))
                    For J As Int32 = Start To [End]
                        KyuWords.Add(FuncMem(J - 1))
                    Next
                Catch ex As Exception
                    Console.WriteLine("Error with @@@integrate. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@clearmem" Then
                ' Deletes the entirety of function memory.
                Try
                    FuncMem.Clear()
                Catch ex As Exception
                    Console.WriteLine("Error with @@@integrate. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@insert" Then
                ' Accepts an position and a string.
                ' Inserts the string at the position in function memory, making anything after move one position up.
                Try
                    I += 1
                    Dim Pos = KyuWords(I)
                    I += 1
                    If KyuWords(I) = "@@@[current]" Then
                        FuncMem.Insert(Pos - 1, Current)
                    ElseIf KyuWords(I) = "@@@[current2]" Then
                        FuncMem.Insert(Pos - 1, Current2)
                    ElseIf KyuWords(I) = "@@@[funcmem]" Then
                        I += 1
                        FuncMem.Insert(Pos - 1, FuncMem(KyuWords(I) - 1))
                    Else
                        FuncMem.Insert(Pos - 1, KyuWords(I))
                    End If
                Catch ex As Exception
                    Console.WriteLine("Error with @@@insert. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@label" Then
                ' Accepts a position in function memory.
                ' Does a goto to the first line containing "@@@LABEL:" appended with the contents of the position in function memory.
                '
                ' This wasn't quite a conditional, but was the second flow control mechanism added.
                ' It can sort of simulate a rudimentary conditional by having all options represented as labels in the code.
                Try
                    I += 1
                    Dim Label As String = FuncMem(Int32.Parse(KyuWords(I)) - 1)
                    Dim J As Int32 = I
                    I = 0
                    While KyuWords(I) <> ("@@@LABEL:" & Label)
                        I += 1
                        If I >= KyuWords.Count Then
                            I = J
                            Exit While
                        End If
                    End While
                Catch ex As Exception
                    Console.WriteLine("Error with @@@label. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@mempointer" Then
                ' Accepts 2 positions.
                ' Uses the first position to get an entry in function memory which it uses as another, third position.
                ' Takes that third position, locates the corresponding entry in function memory, and replaces
                ' the entry at the second position with it.
                Try
                    I += 1
                    Dim PointerPos As Int32 = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim ResultPos As Int32 = Int32.Parse(KyuWords(I))
                    FuncMem(ResultPos - 1) = FuncMem(FuncMem(PointerPos - 1) - 1)
                Catch ex As Exception
                    Console.WriteLine("Error with @@@mempointer. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@joinmem" Then
                ' Accepts 3 positions.
                ' Concatenates the entries in function memory corresponding to the first two positions,
                ' and inserts the result at the third position.
                Try
                    I += 1
                    Dim String1Pos As Int32 = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim String2Pos As Int32 = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim ResultPos As Int32 = Int32.Parse(KyuWords(I))
                    FuncMem.Insert(ResultPos - 1, FuncMem(String1Pos - 1) & FuncMem(String2Pos - 1))
                Catch ex As Exception
                    Console.WriteLine("Error with @@@joinmem. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@letter" Then
                ' Accepts a position and an index.
                ' Takes the function memory entry at the position, retrieves the indexth character, and inserts that character directly after index.
                Try
                    I += 1
                    Dim StringPos As Int32 = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim CharPos As Int32 = Int32.Parse(KyuWords(I))
                    FuncMem.Insert(StringPos, FuncMem(StringPos - 1)(CharPos - 1))
                Catch ex As Exception
                    Console.WriteLine("Error with @@@letter. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@gen" Then
                ' Generates a random number between 1 and 100, and appends it to function memory.
                Try
                    FuncMem.Add(New Random(Convert.ToInt32(DateTime.Now.Ticks And &H7FFFFFFF)).Next(1, 101).ToString())
                Catch ex As Exception
                    Console.WriteLine("Error with @@@gen. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@input" Then
                ' Takes a line of input, and appends it to function memory.
                '
                ' Kyu is normally incapable of processing any sort of whitespace.
                ' There is no typical way to output it, check for it, store it.
                ' However, by getting help from the user and asking them to input whitespace,
                ' suddenly all these things become possible using self-modification and concatenation.
                ' You can even have a label with whitespace as long as it is created through those methods, allowing
                ' the program to check for it.
                ' It is, however, never possible to store tabs, linefeeds, or carriage returns in matrices without breaking things.
                Try
                    FuncMem.Add(Console.ReadLine())
                Catch ex As Exception
                    Console.WriteLine("Error with @@@input. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@substring" Then
                ' Takes a memory position and two character positions.
                ' Gets the substring of the function memory at the memory position with the starting index of the first character index
                ' and the ending index (exclusive) of the second character index.
                ' Inserts the substring in the place of the memory position, instead of after it like with @@@letter.
                ' What was I thinking when I designed this?
                Try
                    I += 1
                    Dim StringPos As Int32 = KyuWords(I)
                    I += 1
                    Dim CharPos1 As Int32 = KyuWords(I)
                    I += 1
                    Dim CharPos2 As Int32 = KyuWords(I)
                    FuncMem.Insert(StringPos - 1, FuncMem(StringPos - 1).Substring(CharPos1 - 1, FuncMem(StringPos - 1).Length - CharPos2 + 1))
                Catch ex As Exception
                    Console.WriteLine("Error with @@@substring. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@destroy" Then
                ' Takes a position.
                ' Removes the entry in function memory at the position.
                Try
                    I += 1
                    FuncMem.RemoveAt(Int32.Parse(KyuWords(I)) - 1)
                Catch ex As Exception
                    Console.WriteLine("Error with @@@destroy. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@clabel" Then
                ' Takes a position and a label name.
                ' Checks if the entry in function memory at the position is positive or not a number.
                ' If it meets either of these conditions, the word containing "@@@LABEL:" appended with the label name is jumped to.
                Try
                    I += 1
                    Dim MemPos As Int32 = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim Label As String = KyuWords(I)
                    Dim J As Int32 = I
                    If Not (New Regex("(0|\-[0-9]+)").IsMatch(FuncMem(MemPos - 1))) Then
                        I = 0
                        While KyuWords(I) <> ("@@@LABEL:" & Label)
                            I += 1
                            If I >= KyuWords.Count Then
                                I = J
                                Exit While
                            End If
                        End While
                    End If
                Catch ex As Exception
                    Console.WriteLine("Error with @@@clabel. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@modifycode" Then
                ' Takes a script position and a memory position.
                ' Changes the script entry at the script position to the entry in function memory at the memory position.
                Try
                    I += 1
                    Dim ScriptPos As Int32 = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim MemPos As Int32 = Int32.Parse(KyuWords(I))
                    KyuWords(ScriptPos - 1) = FuncMem(MemPos - 1)
                Catch ex As Exception
                    Console.WriteLine("Error with @@@modifycode. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@matrixstoragecreate" Then
                ' Takes a name.
                ' Creates a new matrix with the name.
                '
                ' The intent of matrices was to introduce a way for separate scripts to communicate,
                ' and also for scripts to save data, such as savegames.
                ' Files can be added to the queue, but when I tried to have a script read from the queue,
                ' it didn't work for some reason.
                '
                ' In the original scratch version matrices were stored in a list, each matrix taking up a single string.
                ' The entries were separated using something that looked like a hyphen, but was actually a more obscure Unicode character.
                ' The rows were separated using a longer unicode dash.
                ' Since it's not intended for Kyu to be messing with whitespace anyway, I decided to use the more common tsv (tab separated values) format
                ' for this implementation.
                ' I also decided to store it in a file in this so it would be persistant.
                '
                ' Matrices are initialized with all entries set to 0.
                ' They are always 10x10.
                '
                ' The only way to write things dynamically to a matrix to *actually* save data is to use self-modifying code.
                ' Same deal with dynamic coordinates.
                ' (You could use a ton of conditional checks, but that would be really repetitive.)
                Try
                    I += 1
                    Dim Name As String = KyuWords(I)
                    Name = "kyu_env/matrices/" & Name & ".tsv"

                    Dim Row As String = ""
                    For J As Int32 = 1 To 10
                        Row += "0" & vbTab
                    Next
                    Row = Row.Substring(0, Row.Length - 1)
                    Dim Writer2 As New StreamWriter(File.Create(Name))
                    Try
                        For J As Int32 = 1 To 10
                            Writer2.WriteLine(Row)
                        Next
                    Finally
                        Writer2.Flush()
                        Writer2.Dispose()
                    End Try
                Catch ex As Exception
                    Console.WriteLine("Error with @@@matrixstoragecreate. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@matrixstorageget" Then
                ' Takes a name, and two coordinates.
                ' Sets the current value to the value in the matrix with the name at the coordinates.
                Try
                    I += 1
                    Dim Name As String = KyuWords(I)
                    Name = "kyu_env/matrices/" & Name & ".tsv"
                    I += 1
                    Dim X As Int32 = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim Y As Int32 = Int32.Parse(KyuWords(I))
                    Dim Matrix()() As String
                    Dim ShouldBreak As Boolean = False
                    Dim Reader As StreamReader

                    Try
                        Matrix = Reader.ReadToEnd().Split(vbLf).Select(Of String)(Function(S) S.Trim()) _
                                .Select(Of String())(Function(S) S.Split(vbTab)).ToArray()
                    Finally
                        Reader.Dispose()
                    End Try
                    Current = Matrix(X - 1)(Y - 1)

                Catch ex As Exception
                    Console.WriteLine("Error with @@@matrixstorageget. Word" & I)
                End Try
            ElseIf KyuWords(I) = "@@@matrixstorageset" Then
                ' Takes a name, two coordinates, and a value.
                ' Writes the value to the matrix with the name at the coordinates.
                Try
                    I += 1
                    Dim Name As String = KyuWords(I)
                    Name = "kyu_env/matrices/" & Name & ".tsv"
                    I += 1
                    Dim X As Int32 = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim Y As Int32 = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim Elem As String = KyuWords(I)
                    Dim Matrix()() As String
                    Dim Reader As New StreamReader(Name)
                    Try
                        Matrix = Reader.ReadToEnd().Split(vbLf).Select(Of String)(Function(S) S.Trim()) _
                                .Select(Of String())(Function(S) S.Split(vbTab)).ToArray()
                    Finally
                        Reader.Dispose()
                    End Try
                    Matrix(X - 1)(Y - 1) = Elem
                    Dim Rows() As String
                    Rows = Matrix.Select(Of String)(Function(S)
                                                        Dim Total As String
                                                        For Each J In S
                                                            Total += J & vbTab
                                                        Next
                                                        Total = Total.Substring(0, Total.Length - 1)
                                                        Return Total
                                                    End Function).ToArray()
                    Dim Writer2 As New StreamWriter(Name)
                    Try
                        For Each J In Rows
                            Writer2.WriteLine(J)
                        Next
                    Finally
                        Writer2.Flush()
                        Writer2.Dispose()
                    End Try
                Catch ex As Exception
                    Console.WriteLine("Error with @@@matrixstorageset. Word" & I)
                End Try
            ElseIf KyuWords(I) = "&&&tasks" Then
                ' Accepts a position and a length.
                ' Gets entries from function memory, and starts them all concurrently.
                ' It blocks the current thread until all these threads are done.
                '
                ' Threads are specified like full code, but instead of whitespace, they
                ' use the double yen ("¥¥") to separate entries.
                '
                ' The only way to transfer data between threads is to use constants or matrices.
                ' Of course this will be public to all threads, but you could use an affix or something
                ' depending on what thread should be reading from it.
                '
                ' If the length is 1, it will behave pretty much like an eval function.
                '
                ' There's no limitation saying non-main threads can't start threads of their own,
                ' but it would be a bit complicated. Since the double yen is already taken up,
                ' that leaves us with the single yen. You would have to enclose it in some other character,
                ' like @@@push _¥_ (becoming @@@push¥¥_¥_), then use @@@letter to get the yen symbol in function memory.
                ' You could then concatenate it to produce a double yen in memory, and then construct the thread
                ' entry-by-entry, each time using @@@joinmem not just for the entry but also for the double yen.
                ' More than 2 levels would not get much harder, though, since you only need one initial yen for
                ' each level, and you can reuse it.
                ' (You could have the main thread put thread contents in a constant or matrix, then have the inner thread
                ' read it and turn it into a further nested thread.)
                Try
                    I += 1
                    Dim StartPos As Int32 = Int32.Parse(KyuWords(I))
                    I += 1
                    Dim Length As Int32 = Int32.Parse(KyuWords(I))
                    Dim Contents As New List(Of String)
                    For J As Int32 = (StartPos - 1) To (StartPos - 1 + Length - 1)
                        Contents.Add(FuncMem(J))
                    Next
                    Dim Processed As List(Of Tuple(Of List(Of String), Boolean)) = Contents.
                                     Select(Of Tuple(Of List(Of String), Boolean))(Function(X)
                                                                                       Dim AddToQueue2 As Boolean = False
                                                                                       If X.StartsWith("_") Then
                                                                                           X = X.Substring(1)
                                                                                           AddToQueue2 = True
                                                                                       End If
                                                                                       Dim KyuWords2 = X.Split("¥¥").ToList()
                                                                                       Return New Tuple(Of List(Of String), Boolean) _
                                                                                       (KyuWords2, AddToQueue2)
                                                                                   End Function).Select(Of Tuple(Of List(Of String), Boolean)) _
                                                                                   (Function(X)
                                                                                        Dim OddEntriesRemoved As New List(Of String)
                                                                                        Dim K As Int32 = 0
                                                                                        While K < X.Item1.Count
                                                                                            OddEntriesRemoved.Add(X.Item1(K))
                                                                                            K += 2
                                                                                        End While
                                                                                        Return New Tuple(Of List(Of String), Boolean)(OddEntriesRemoved, X.Item2)
                                                                                    End Function).ToList()



                    Dim Tasks As Task() = Processed.Select(Of Task)(Function(X) Task.Run(Sub()
                                                                                             RunKyu(Args, X.Item1, X.Item2, True)
                                                                                         End Sub)).ToArray()
                    Task.WaitAll(Tasks)

                Catch ex As Exception
                    Console.WriteLine("Error with &&&tasks. Word" & I)
                End Try
            ElseIf KyuWords(I) = "&&&const" Then
                ' Accepts a constant name and a value.
                ' Replaces the constant with the value, but remembers where the constants were and replaces them with new ones
                ' even if they no longer are literally the constant.
                ' Normal uses of the constant's value will not be affected unless it was originally the constant. 
                '
                ' Note: "Constants" can actually change, kind of like C# or Visual Basic preprocessor #Const.
                ' However, it does this at runtime, there is no preprocessor involved.
                ' Each thread keeps some data about where constants were changed and remembers that.
                ' There are some weird side effects:
                '     You can self-modify code into a constant, which will be immediately replaced with its value.
                '         This makes constant names completely impossible to print out, for example.
                '         (Although you could redefine a constant to its own name.)
                Try
                    I += 1
                    Dim Name As String = KyuWords(I)
                    If Not Name.StartsWith("¢") Then
                        Throw New Exception()
                    End If
                    I += 1
                    Dim Value As String = KyuWords(I)
                    If GlobalConstants.ContainsKey(Name) Then
                        GlobalConstants(Name) = Value
                    Else
                        GlobalConstants.TryAdd(Name, Value)
                    End If
                Catch ex As Exception
                    Console.WriteLine("Error with &&&const. Word" & I)
                    Console.WriteLine(ex.ToString)
                End Try
            ElseIf KyuWords(I) = "&&&funccall" Then
                ' Accepts either a filename or a position in function memory.
                ' If it is an integer (scripts with purely numerical filenames cannot be called),
                ' it is interpreted as a position in function memory.
                ' The entry at that position should have the same format as a thread.
                ' If it is a filename, it grabs the contents of the file.
                ' Either way, it calls it like a function and puts it onto a return stack
                ' (which is really just Visual Basic's call stack).
                ' If the function terminates by falling off the edge of the program or @ScriptEnd,
                ' it will return to this.
                '
                ' There are not really many good ways to transfer data to a function.
                ' The main two ways are matrices and constants, in the same vein as threads.
                Try
                    I += 1
                    Dim Filename As String = KyuWords(I)
                    If (Int32.TryParse(Filename, 0)) Then
                        Dim Split As List(Of String) = FuncMem(Int32.Parse(Filename) - 1).Split("¥¥").ToList()
                        Dim OddEntriesRemoved As New List(Of String)
                        Dim J As Int32 = 0
                        While J < Split.Count
                            OddEntriesRemoved.Add(Split(J))
                            J += 2
                        End While
                        RunKyu(Args, OddEntriesRemoved, False, True)
                    Else
                        RunKyu(New String() {"", Filename}, True)
                    End If

                Catch ex As Exception
                    Console.WriteLine("Error with &&&funccall. Word" & I)
                End Try
            End If

            '=================================================================================================
            'This code doesn't work currently so I've commented it out.
            'It's supposed to be a TCP socket functionality for Kyu scripts.
            '=================================================================================================
            'ElseIf KyuWords(I) = "&&&connect" Then
            '    Try
            '        Dim Filename2 As String
            '        If ServerMode Then
            '            I += 1
            '            Filename2 = KyuWords(I)
            '            Connection = ServerSocket.Accept()
            '        Else
            '            I += 1
            '            Dim IpAddressString As String = KyuWords(I)
            '            I += 1
            '            Dim Port As Int16 = Int16.Parse(KyuWords(I))
            '            I += 1
            '            Filename2 = KyuWords(I)
            '            Dim IpHost As IPHostEntry = Dns.GetHostEntry(IpAddressString)
            '            Dim Ip As IPAddress = IpHost.AddressList(0)
            '            Dim RemoteEP As IPEndPoint = New IPEndPoint(Ip, Port)
            '            Connection = New Socket(Ip.AddressFamily, SocketType.Stream, ProtocolType.Tcp)
            '            Connection.Connect(RemoteEP)
            '            Console.WriteLine("Connection made.")
            '        End If
            '        RunKyu(New String() {"", Filename2}, True, Connection)
            '    Catch
            '        Console.WriteLine("Error with &&&connect. Word" & I)
            '    End Try
            'ElseIf KyuWords(I) = "&&&send" Then
            '    Try
            '        Dim ByteToSend As Byte = Byte.Parse(Current)
            '        Connection.Send(New Byte() {ByteToSend})
            '    Catch ex As Exception
            '        Console.WriteLine("Error with &&&send. Word" & I)
            '    End Try
            'ElseIf KyuWords(I) = "&&&receive" Then
            '    Try
            '        Dim Received(1) As Byte
            '        Connection.Receive(Received)
            '        Current = Received(0).ToString()
            '    Catch ex As Exception
            '        Console.WriteLine("Error with &&&receive. Word" & I)
            '    End Try
            '=================================================================================================
            I += 1
            For Each J In GlobalConstants
                For K As Int32 = 0 To KyuWords.Count - 1
                    If K <> 0 AndAlso KyuWords(K - 1) = "&&&const" Then
                        Continue For
                    End If
                    If UpdatedWords.ContainsKey(K) AndAlso UpdatedWords(K) = J.Key Then
                        KyuWords(K) = J.Value
                    ElseIf KyuWords(K) = J.Key Then
                        KyuWords(K) = J.Value
                        If UpdatedWords.ContainsKey(K) Then
                            UpdatedWords(K) = J.Key
                        Else
                            UpdatedWords.Add(K, J.Key)
                        End If
                    End If
                Next
            Next
        End While
        ' Only add to the queue if called from the queue.
        ' Files are always added since there wouldn't be any other intention
        ' other than to add to the queue - if it doesn't work why even have it?
        ' So I made it work for file memory.
        If AddToQueue Then
            Dim Writer2 = New StreamWriter("kyu_env/queue.txt", True)
            Try
                For Each J In FuncMem
                    Writer2.WriteLine(J)
                Next
            Finally
                Writer2.Flush()
                Writer2.Close()
            End Try
        End If
        Dim Writer = New StreamWriter("kyu_env/queue.txt", True)
        Try
            For Each J In FileMem
                Writer.WriteLine(J)
            Next
        Finally
            Writer.Flush()
            Writer.Close()
        End Try
        If Not IsEmbedded Then
            Console.WriteLine("Press any key to continue or exit, depending on mode.")
            Console.ReadKey()
        End If
    End Sub
End Module
