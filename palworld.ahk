#NoEnv

SendMode Input 
SetWorkingDir %A_ScriptDir% 

f1::
  if (!ToggleF1) {
    ToggleF1 := true
    Send {f down}
  } else {
    ToggleF1 := false
    Send {f up}
  }
return

f2::
  if (!ToggleF2) {
    ToggleF2 := true
    send {w down}
  } else {
    ToggleF2 := false
    send {w up}
  }
return

f3::
  if (!ToggleF3) {
    ToggleF3 := true
    send {LButton down}
  } else {
    ToggleF3 := false
    send {LButton up}
  }
