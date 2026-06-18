(*
  A palindromic number reads the same both ways.

  Known example:
    The largest palindrome made from the product of two 2-digit numbers
    is 9009 = 91 x 99.

  Goal:
    Find the largest palindrome made from the product of two 3-digit numbers.
*)


let generate_largest_palindrome (n : int) : int =
  let is_palindrome (number : int) : bool =
    let s = string_of_int number in
    let n = String.length s in
    let rec check i =
      if i >= n / 2 then true
      else if s.[i] <> s.[n - 1 - i] then false
      else check (i + 1)
    in
    check 0
  in
  let largest_palindrome = ref 0 in
  let lower = int_of_float (10. ** float_of_int (n - 1)) in
  let upper = int_of_float (10. ** float_of_int n) in
  for first_number = lower to upper do
    for second_number = lower to upper do
      let product = first_number * second_number in
      if (is_palindrome product && !largest_palindrome < product) then
        largest_palindrome := product
    done
  done;
  !largest_palindrome

