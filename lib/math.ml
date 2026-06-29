
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
  (aux 1 1)


let greatest_common_divisor (lst : int list) : int =
  let rec gcd (a : int) (b : int) : int = 
    match a,b with
    | 0, b -> b
    | a, 0 -> a
    | a,b when a > b -> gcd b (a mod b)
    | a, b -> gcd a (b mod a)
  in
  let rec aux (lst' : int list) (acc : int) = 
    match lst' with
    | [] -> failwith "Integer list must not be empty"
    | [element] -> gcd acc element
    | h :: t -> aux t (gcd acc h)
  in
  aux lst 0


let is_prime (number : int) : bool =
  if number < 0 then failwith "is_prime requires a positive number"
  else if number = 0 || number = 1 then false
  else
    let rec aux (n : int) (acc : int) : bool = 
      if acc * acc > n then true
      else if  n mod acc = 0 then false
      else aux n (acc + 1)
    in
    aux number 2

