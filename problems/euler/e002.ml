(** [sum_even_fib limit] computes the sum of even-valued fibonacci terms that do not exceed the limit
    for instance
     By starting with 1 and 2 , the first 10 terms will be:
                    1, 2, 3, 5, 8, 13, 21, 34, 55, 89
    sum_even_fib 13 computes 10. *)

let sum_even_fib (limit : int) : int =
  let rec aux a b acc =
    if a > limit then acc
    else
      let acc' = if a mod 2 = 0 then acc + a else acc in
      aux b (a + b) acc'
  in
  aux 1 2 0
