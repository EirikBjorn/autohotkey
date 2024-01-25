#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; toggle hold down 'w' and 'shift' when pressing 'f1'

shiftWActive := false

#IfWinActive, ahk_exe ShooterGame.exe ; Replace with the actual executable name of the game

  F4::
    if (shiftWActive)
    {
      SendInput, {Shift up}{w up}
      shiftWActive := false
    }
    else
    {
      SendInput, {Shift down}{w down}
      shiftWActive := true
    }
  return

  #IfWinActive ; Reset the context for other hotkeys

