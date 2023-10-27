# https://uiua.org/pad?src=R2NkIOKGkCAofDIgCiAgO-KNpSgJCSMgTG9vcAogICAg4o6LPTAuCSMgQnJlYWsgd2hlbiB0b3Agb2Ygc3RhY2sgaXMgemVybyAKICAgIOKXvyziiLYJCSMgU3dhcCwgZHVwIGFuZCB0YWtlIG1vZAogICniiJ4JCSMgTG9vcCB1bnRpbCBpbmYKKSAJCSMgQWZ0ZXIgbG9vcCBlbmRzIGBwb3AgO2AgdG9wIG9mIHN0YWNrCgojVGVzdHMgICAgICAgICAgXwrijaQuID0wIEdjZCAwIDAgICMgXCAK4o2kLiA9MiBHY2QgMCAyICAjICAtLT4gSGFubGRlIDAK4o2kLiA9MiBHY2QgMiAwICAjXy8K4o2kLiA9MSBHY2QgMiAxICAjIFxfXz4gSGFuZGxlIGNvcHJpbWVzIArijaQuID0xIEdjZCAyIDMgICNfLwrijaQuID0yIEdjZCAyIDQgICMtLS0tPiBIYW5kbGUgd2hlbiB4PWQqeQrijaQuID0zIEdjZCAyNCA5ICMtLS0tPiBIYW5kbGUgZ2VuZXJhbCBjYXNlCg==

Gcd ← (|2
  ;⍥(		# Loop
    ⎋=0.	# Break when top of stack is zero
    ◿,∶		# Swap, dup and take mod
  )∞		# Loop until inf
)           # After loop ends `pop ;` 0 to get the gcd
            # `pop ;` needs to be before `repeat ⍥`

#Tests          _
⍤. =0 Gcd 0 0  # \
⍤. =2 Gcd 0 2  #  --> Hanlde 0
⍤. =2 Gcd 2 0  #_/
⍤. =1 Gcd 2 1  # \__> Handle coprimes
⍤. =1 Gcd 2 3  #_/
⍤. =2 Gcd 2 4  #----> Handle when x=d*y
⍤. =3 Gcd 24 9 #----> Handle general case

