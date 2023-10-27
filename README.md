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

```
# x,y -> y,x%y
g ← (|2.2
    ?∶∘<,,  # Swap x and y if x<y
    ◿,∶     # Swap x and y, dup y to top of stack,take x mod y
)
```
