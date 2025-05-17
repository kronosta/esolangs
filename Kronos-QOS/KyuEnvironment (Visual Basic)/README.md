# KyuEnvironment
This is a .NET console app recreation of Kronos-QOS, made around December 2022.
It has a few differences from the original scratch version. One major one is that things are now mostly case-sensitive, 
while in the Scratch version, case doesn't matter in anything at all.

All script commands except `@@@shellcommand` are implemented. The shell commands `createfile` (renamed to `create`), `move`, `execute`, `find`, `push`, `pop`, and `shift` are implemented, plus a `view` command which shows you the contents of the queue.

The shell commands "load" and "save" are...questionably...replaced with
saving and loading after every command (I was apparently not a great coder in 2022, this will use the heck out of your disk and probably slow down performance).

A few additional script commands are also implemented, called `&&&tasks`, `&&&const`, and `&&&funccall`.
The code comments explain these decently so I'll copy that here and make some modifications:
## `&&&tasks`
Accepts a position and a length.
Gets entries from function memory, and starts them all concurrently.
It blocks the current thread until all these threads are done.

Threads are specified like full code, but instead of whitespace, they
use the double yen (`¥¥`) to separate entries.

The only way to transfer data between threads is to use constants or matrices.
Of course this will be public to all threads, but you could use an affix or something
depending on what thread should be reading from it.

If the length is 1, it will behave pretty much like an eval function.

There's no limitation saying non-main threads can't start threads of their own,
but it would be a bit complicated. Since the double yen is already taken up,
that leaves us with the single yen. You would have to enclose it in some other character,
like `@@@push _¥_` (becoming `@@@push¥¥_¥_`), then use `@@@letter` to get the yen symbol in function memory.
You could then concatenate it to produce a double yen in memory, and then construct the thread
entry-by-entry, each time using `@@@joinmem` not just for the entry but also for the double yen.
More than 2 levels would not get much harder, though, since you only need one initial yen for
each level, and you can reuse it.
(You could have the main thread put thread contents in a constant or matrix, then have the inner thread
read it and turn it into a further nested thread.)

## `&&&const`

Accepts a constant name and a value.
Replaces instances of the constant's name with the value, but remembers where the instances were and replaces them with new values
even if they no longer are literally the constant.
Normal uses of the constant's value will not be affected unless it was originally the constant.

Constants are global, and their names must always start with a cent sign (`¢`).

Note: "Constants" can actually change, kind of like C# or Visual Basic preprocessor #Const.
However, it does this at runtime, there is no preprocessor involved.
Each thread keeps some data about where constants were changed and remembers that.
There are some weird side effects:
- You can self-modify code into a constant, which will be immediately replaced with its value.
  This makes constant names completely impossible to print out unless you redefine a constant to its own name.

## `&&&funccall`

Accepts either a filename or a position in function memory.
If it is an integer (scripts with purely numerical filenames cannot be called),
it is interpreted as a position in function memory.
The entry at that position should have the same format as a thread.
If it is a filename, it grabs the contents of the file.
Either way, it calls it like a function and puts it onto a return stack
(which is really just Visual Basic's call stack).
If the function terminates by falling off the edge of the program or @ScriptEnd,
it will return to this.

There are not really many good ways to transfer data to a function.
The main two ways are matrices and constants, in the same vein as threads.
