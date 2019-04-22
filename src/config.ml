#use "topfind"
#require "unix"

let () = if Array.length Sys.argv <> 2 then assert false

let fmt = Printf.sprintf
let cmd x =
  let ic = Unix.open_process_in x in
  let res = input_line ic in
  close_in ic;
  res

let version = Sys.argv.(1)
let share = cmd "opam config var share"

let l = [
  fmt "DEFINE VERSION = %s" version;
  "DEFINE DEFAULT_ENCODING = \"UTF-8\""; (* TODO: Give back people the possibility to give a custom value for this *)
  fmt "DEFINE PREFIX = \"%s/rldev/lib\"" share;
]

let () = List.iter print_endline l
