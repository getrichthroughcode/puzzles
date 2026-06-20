(**
   Floyd's algorithm description incoming 
   *)


let itere (f : 'a -> 'a) (x_0 : 'a) (n : int) : 'a =
  let rec aux (f' : 'a -> 'a) (n' : int) (acc : 'a) : 'a =
    match n' with
    | 0 -> acc
    | n -> let acc' = f acc in
              aux f' (n' - 1) (acc')
  in
  aux f n x_0



let rec itere2 (f : 'a -> 'a) (x_0 : 'a) (n : int) : 'a = 
  match n with
  | 0 -> x_0
  | n -> itere f (f x_0) (n-1)

let rec found (lst : 'a list) (el : 'a) = 
  match lst with
  | [] -> false
  | h :: t when h = el -> true
  | _ :: t -> found t el

let floyd1 (f : 'a -> 'a) (x_0 : 'a) : 'a =
  let marker = ref [] in
  let acc = ref x_0 in 
  while not (found !marker !acc) do
    marker := !acc :: !marker;
    acc := f !acc;
  done;
  !acc
