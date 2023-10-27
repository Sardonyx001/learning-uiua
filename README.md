# Solutions to programming problems in Uiua

I'm just keeping track of these scripts posterity's sake

To run anything just install Uiua with

```bash
cargo install uiua
```

And then just run

```bash
uiua run [FILENAME].ua
```

Have fun!

Some Uiuisms I found:

- Swap top 2 stacks so that the smaller is the top

```
# x,y -> y,x%y
g ← (|2.2
    ?∶∘<,,  # Swap x and y if x<y
    ◿,∶     # Swap x and y, dup y to top of stack,take x mod y
)
```

- Compute the GCD of 2 integers

```
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
```
