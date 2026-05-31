(**
   Back in high school, I had a math contest with a friend.
   The goal: be the first to find the smallest number which, when divided
   by any integer from 1 to 10, leaves a remainder of 1.
   Mathematically: find min {x ∈ ℕ such that x mod n = 1, for all n ∈ [1, 10]}.

   This function generalizes that problem — instead of fixing the upper
   bound at 10, it takes an arbitrary bound N and returns the smallest
   such x satisfying x mod n = 1 for all n ∈ [1, N].
 *)

let least_common_multiple (limit : int) : int =
  let rec gcd (a : int) (b : int) : int =
    if b = 0 then a
    else gcd b (a mod b)
  in
  let atomic_lcm (a : int) (b : int) : int = 
    a * b / gcd a b
  in
  let rec aux (k : int) (acc : int) : int = 
    if k > limit then acc
    else
      let acc' = atomic_lcm k acc in 
      aux (k+1) acc'
  in
  (aux 1 1) + 1 (* I added 1 in order to compute the value directly, I should change my function's name*)
      



