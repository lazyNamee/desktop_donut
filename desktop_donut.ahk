SetDefaultMouseSpeed 0
CoordMode "Mouse", "Screen"

Loop {
  click()
  Sleep 10
}

click()
{
  MouseGetPos &xpos, &ypos
  ; TrayTip Format("{} {}", xpos, ypos)
  if (xpos = 0) {
    MouseMove A_ScreenWidth - 2, ypos
  } else if (xpos = A_ScreenWidth - 1) {
    MouseMove 1, ypos
  }
  MouseGetPos &xpos
  
  if (ypos = 0) {
    MouseMove xpos, A_ScreenHeight - 2
  } else if (ypos = A_ScreenHeight - 1) {
    MouseMove xpos, 1
  }
}
