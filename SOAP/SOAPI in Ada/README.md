`detergent` is an Ada interpreter for the SOAPI (ANSI SOAP) esolang.

# Command-line arguments
```
-E(code)    Appends the code to the SOAPI program.
-C(num)     Appends the byte num to the SOAPI program.
-l          Specifies that the syntax is loose.
            This means that any invalid commands are no-ops.
            Note that without this, programs with whitespace (except after " or ') will not run.
```

# Notes
This interpreter does not support newlines on input, and I don't know why. I think it probably has something to do with Ada.Text_IO.Get being weird.
