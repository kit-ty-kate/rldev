#use "topfind"
#require "unix"

let fmt = Printf.sprintf
let cmd x =
  let ic = Unix.open_process_in x in
  let res = input_line ic in
  close_in ic;
  res

let share = cmd "opam config var share"

let l = [
  "DEFINE DEFAULT_ENCODING = \"UTF-8\""; (* TODO: Give back people the possibility to give a custom value for this *)
  fmt "DEFINE PREFIX = \"%s/rldev/lib\"" share;
]

let () = List.iter print_endline l
