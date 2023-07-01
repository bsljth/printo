proc printo*(text: string, mode: string, timeMS: uint) =
  if mode == "wbwsl":
    wbwsl(text, timeMS)
  elif mode == "lblsl":
    lblsl(text, timeMS)
  elif mode == "wbwnl":
    wbwnl(text, timeMS)
  elif mode == "lblnl":
    lblnl(text, timeMS)

proc wbwsl(text: string, timeMS: uint) =
proc lblsl(text: string, timeMS: uint) =
proc wbwnl(text: string, timeMS: uint) =
proc lblnl(text: string, timeMS: uint) =