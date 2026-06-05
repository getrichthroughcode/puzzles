(**
   The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143?
   *)

let is_prime (number : int) : bool =
  if number = 1 then false
  else
    let rec aux (n : int) (acc : int) : bool =
      if acc * acc > n then true
      else if n mod acc = 0 then false
      else aux n (acc + 1)
    in 
    aux number 2

let rec max (lst : int list) (acc : int) : int = 
  match lst with
  | [] -> acc
  | h :: t -> if h > acc then max t h
              else
                max t acc


let largest_prime_factor (number : int) : int =
  let rec aux (n : int) (acc : int) : int list =
    if float_of_int acc > sqrt (float_of_int number) then []
    else if is_prime acc && n mod acc = 0 then
      acc :: aux (n / acc) acc
    else
      aux n (acc + 1)
  in
  max (aux number 2) 0


