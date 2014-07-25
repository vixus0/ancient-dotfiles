#!/usr/bin/env python

import subprocess as sp

out = sp.check_output(["herbstclient", "tag_status"])
tags = map(lambda x: str(x).replace("b'",""), out.split())

active = lambda x: '${color1}'+x+'${color}'
urgent = lambda x: '${color6}'+x+'${color}'
occupied = lambda x: '${color7}'+x+'${color}'

out = ""
for t in tags:
  if t[0] == "#":
    out += active(t[1])
  elif t[0] == "!":
    out += urgent(t[1])
  elif t[0] == ":":
    out += occupied(t[1])
  else:
    out += t[1]
  out += " "

print(out)
