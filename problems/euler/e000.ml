(** [sum_odd_squares n] returns the sum of the odd squares
    among the first [n] square numbers.

    The first 5 squares are 1, 4, 9, 16, 25, and the sum of
    the odd ones is 1 + 9 + 25 = 35. *)

(* Pythonic version *)

let sum_odd_squares_v1 (n : int) : int =
  let sum = ref 0 in
  for number = 1 to n do
    if (number mod 2) = 1 then 
      sum := !sum + number * number
  done;
  !sum

let sum_odd_squares_v2 (n : int) : int = 
  let sum = ref 0 in 
  let number = ref 1 in 
  while (!number <= n) do
    sum := !sum + !number * !number;
    number := !number + 2
  done;
  !sum


(* Recursive Version *)

let sum_odd_squares_v3 (n : int) : int = 
  let rec aux (k : int) : int = 
    if k > n then 0
    else k*k + aux (k + 2)
  in
  aux 1
