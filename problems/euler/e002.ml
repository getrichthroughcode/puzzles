

(* slop block of code I think *)

let sum_even_valued_fibonacci_terms (n : int) : int = 
  let rec fib (k : int) : int =
    match k with
    | 1 -> 1
    | 2 -> 2
    | k -> fib (k-1) + fib (k-2)
  in
  let sum = ref 0 in
  for idx = 1 to n do
    let fib_term = fib idx in
    if fib_term <= 4000000 && fib_term mod 2 = 0 then
      sum := !sum + fib_term
  done;
  !sum



