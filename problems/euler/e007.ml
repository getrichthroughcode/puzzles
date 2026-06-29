(* By listing the first six prime numbers: 2, 3, 5, 7, 11 and 13, we can see that the 6th prime is 13.

What is the 10001st prime number? *)
#load "lib/math.cmo"



let nth_prime () : int =
  let count = ref 0 in
  let possible = ref 2 in
  let last_prime = ref 2 in

  while !count < 10001 do
    if Math.is_prime !possible then begin
      count := !count + 1;
      last_prime := !possible
    end;
    possible := !possible + 1
  done;

  !last_prime
