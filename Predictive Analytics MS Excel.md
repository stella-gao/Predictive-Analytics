* Use Alt+F11 to open the Visual Basic Editor. Then arrange for a fresh module by choosing Insert, Module.
* I always specify Option Explicit at the top of my VBA modules. Doing so forces me to declare variables explicitly, often with Dim statements. For example: Dim NextRow as Integer
* Dim , short for dimension , informs VBA that a variable named NextRow is intended to exist in the module’s code: The variable is declared to exist.
* This very short, three-statement subroutine causes the main GetNewData subroutine to run an hour from now:
```vba
        Private Sub DoItAgain()
        Application.OnTime Now + TimeValue(“01:01:00”), “GetNewData”
        End Sub
```
The full statement instructs VBA to run the procedure named GetNewData , 61 minutes after the OnTime method is invoked.
```vba
        Sub GetNewData()
        Dim NextRow As Integer, NextRank As Long
        Dim UnitsLeft As Integer, NextLeft As Integer
        Application.ScreenUpdating = False
        Application.Calculation = xlCalculationManual
        RefreshSheets “Stats”
        RefreshSheets “BAXL Kindle”
        NextRow = ThisWorkbook.Sheets(“Summary”).Cells(Rows.Count, 1).End(xlUp).Row
```
* If you’re using an Excel worksheet directly, one of the ways to move around is with Ctrl + arrow , where arrow means up or down arrow, right or left arrow.
* 
