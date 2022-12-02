' Rosetta Code
'
' 100 Doors Problem
' -----------------------------------------------------------
' There are 100 doors in a row that are all initially closed.
' You make 100 passes by the doors.
' The first time through, visit every door and toggle the
' door (if the door is closed, open it; if it is open,
' close it).
' The second time, only visit every 2nd door (door #2, #4,
' #6, ...), and toggle it.
' The third time, visit every 3rd door (door #3, #6, #9,
' ...), etc, until you only visit the 100th door.
'
' Task:
' Answer the question: what state are the doors in after
' the last pass? Which are open, which are closed?
' -----------------------------------------------------------

_TITLE "100 Doors Problem"

DIM AS _BIT doors(1 TO 100) ' Doors will initialize to zero or closed
DIM AS INTEGER passes, doorCount

FOR passes = 1 TO 100
  FOR doorCount = passes TO 100 STEP passes
    doors(doorCount) = NOT doors(doorCount)
  NEXT
NEXT

FOR doorCount = 1 TO 100
  IF doors(doorCount) = 0 THEN
    COLOR 12 ' Red
  ELSE
    COLOR 15 ' White
  END IF
  PRINT USING "Door: ### "; doorCount;
NEXT
COLOR 15
