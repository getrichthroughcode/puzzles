module type Math = sig
  (** [least_common_multiple n] is the least_common_multiple of the numbers 1..n. *)
  val least_common_multiple : int -> int
end

module IntMath : Math = struct
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
end
