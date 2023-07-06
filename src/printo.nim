import std/strutils
import std/strformat
from os import sleep

## print text letter by letter on the same line
proc lblsl(text: string, timeMS: int) =
  setStdIoUnbuffered()
  for c in text:
    sleep(timeMS)
    stdout.write(c)
  stdout.write("\n")

## print text word by word on the same line
proc wbwsl(text: string, timeMS: int) =
  var arr = split(text)

  setStdIoUnbuffered()
  for ix, elmnt in arr:
    if ix == elmnt.len - 1:
      stdout.write(elmnt)
    else:
      sleep(timeMS)    
      stdout.write(elmnt & " ")
  stdout.write("\n")

proc lblnl(text: string, timeMS: int) =
  for c in text:
    sleep(timeMS)
    echo(c)


proc wbwnl(text: string, timeMS: int) =
  var arr = split(text)
  for item in arr:
    sleep(timeMS)
    echo(item)

proc printo*(text: string, mode: string, timeMS: int) =
  if mode == "lblsl":
    lblsl(text, timeMS)
  elif mode == "wbwsl":
    wbwsl(text, timeMS)
  elif mode == "lblnl":
    lblnl(text, timeMS)
  elif mode == "wbwnl":
    wbwnl(text, timeMS)
  else:
    raise newException(ValueError, fmt"Mode {mode} is not found! Must be: lblsl or wbwsl or lblnl or wbwnl")