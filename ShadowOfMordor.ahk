#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

toggle:=false

#IfWinActive Middle-earth: Shadow of Mordor ahk_class Shadow of Mordor ahk_exe ShadowOfMordor.exe
{
	$LCtrl::
	toggle:=!toggle
	Send, % "{LCtrl " ( toggle ? "down" : "up" ) "}"
	return
}