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

