import std/strutils
from os import sleep


#[ proc wbwsl(text: string, timeMS: int) =
  var arr = split(text)

  for c in text:
    sleep(timeMS)    
    echo c ]#

proc lblsl(text: string, timeMS: int) =
  setStdIoUnbuffered()
  for c in text:
    sleep(timeMS)
    stdout.write(c)
  stdout.write("\n")

proc printo*(text: string, mode: string, timeMS: int) =
  #[ if mode == "wbwsl":
    wbwsl(text, timeMS) ]#
  if mode == "lblsl":
    lblsl(text, timeMS)
  #[ elif mode == "wbwnl":
    wbwnl(text, timeMS)
  elif mode == "lblnl":
    lblnl(text, timeMS) ]#


#proc lblsl(text: string, timeMS: uint) =
#proc wbwnl(text: string, timeMS: uint) =
#proc lblnl(text: string, timeMS: uint) =