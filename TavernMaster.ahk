#NoEnv

#Persistent

#SingleInstance, force

SetMouseDelay, 10

SendMode, event

f12:: ;<- use the f12 key to start/stop the clicking routine

  clicktoggle := !clicktoggle

  if (!clicktoggle)

  { SetTimer, startclick, off

    tooltip

    return

  }

  ; drops through into the click timer

startclick:

  tooltip, auto-clicking is on

  Send, Esc

  click

  SetTimer, startclick, -3000

return
