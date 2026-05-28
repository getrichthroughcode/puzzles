(** [sum_both_multiples_v{} n] returns the sum of numbers below n that are either
    multiple of 5 or 3
    
    If we list all the natural numbers below 10 that are multiples of 3 or 5,
    we get 3, 5, 6 and 9. The sum of these multiples is 23.
    
    *)

(* Imperative version *)
let sum_both_multiples_v0 (n : int) : int =
  let sum = ref 0 in
  for number = 1 to (n-1) do
    if ( number mod 3 = 0 || number mod 5 = 0) then
      sum := !sum + number
  done;
  !sum


(* Naive Recursion *)

let sum_both_multiples_v1 (n : int) : int = 
  let rec aux (k : int) : int = 
    if k >= n then 0
    else
      if (k mod 3 = 0 || k mod 5 = 0) then k + aux (k + 1)
      else aux (k + 1)
  in
  aux 1

(* ( Tail-recursive ) 

TODO 

*)

(* Inclusion - Exclusion *)

let sum_both_multiples_v2 (n : int) : int =
  let sum_multiple_k (k : int) : int =
    let new_limit = ((n-1) - (n-1) mod k) / k in
      k * (new_limit * (new_limit + 1) / 2)
  in
    sum_multiple_k 3 + (sum_multiple_k 5) - (sum_multiple_k 15)

