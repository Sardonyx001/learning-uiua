# Solution for Leetcode 2529 in Uiua
# https://www.youtube.com/watch?v=U6I-Kwj-AvY&t=52s 

p ← ↥∩/+⊃<>0
# [¯1 ¯1 1 1 1 ¯1 2 3]  Input is already on the stack
# 0                     Push 0 unto the stack 
#  >      
#  <      
#   ⊃                   Phi combinator with fork ⊃, lt <,gt < 
#    +
#    / 
#     ∩                 Psi combinator with filter / and add + 
#      ↥                Take the max 

# Tests
p [¯1 ¯1 1 1 1 ¯1 2 3]
# Output: 5
