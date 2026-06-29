(*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10  without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20 ?

Pretty easy problem -- Just got to compute the least common multiple of the numbers 1 2 up to 20. 


I have abstracted away the implementation of the solution on my personal ocaml math library in the 
folder lib/math.ml
 *)



let response = Math.least_common_multiple 20
