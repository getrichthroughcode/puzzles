(** [least_common_multiple n] is the least common multiple 
    of the numbers ranging 1 to [n].
    Example: [least_common_multiple 1] -> 1 
             [least_common_multiple 10] -> 2520
             [least_common_multiple 0] -> Exception 
    Requires: n > 0 
    Raises : Exception when n = 0. *)
val least_common_multiple : int -> int

(** [greatest_common_divisor lst] is the greatest common 
    divisor of the list of integers in [lst] 
    Example: [greatest_common_divisor []] -> Exception
             [greatest_common_divisor [..., 1, ...]] -> 1

    Requires: lst <> []
    Raises  : Exception when lst = []*)
val greatest_common_divisor : int list -> int

(** [is_prime number] determines whether number is a prime
    number or not. 
    Example: [is_prime 1] -> False
             [is_prime 2] -> True
    requires: number >= 0
    raises  : Exception when number is negative. 
 *)
val is_prime : int -> bool  


