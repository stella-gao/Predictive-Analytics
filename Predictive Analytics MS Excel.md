* Use Alt+F11 to open the Visual Basic Editor. Then arrange for a fresh module by choosing Insert, Module.
* I always specify Option Explicit at the top of my VBA modules. Doing so forces me to declare variables explicitly, often with Dim statements. For example: Dim NextRow as Integer
* Dim , short for dimension , informs VBA that a variable named NextRow is intended to exist in the module’s code: The variable is declared to exist.
* This very short, three-statement subroutine causes the main GetNewData subroutine to run an hour from now:
```vba
        Private Sub DoItAgain()
        Application.OnTime Now + TimeValue(“01:01:00”), “GetNewData”
        End Sub
```
