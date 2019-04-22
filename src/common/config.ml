(*
   Rldev: configuration-related functionality
   Copyright (C) 2006 Haeleth
   Revised 2009-2011 by Richard 23

   This program is free software; you can redistribute it and/or modify it under
   the terms of the GNU General Public License as published by the Free Software
   Foundation; either version 2 of the License, or (at your option) any later
   version.

   This program is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
   FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
   details.

   You should have received a copy of the GNU General Public License along with
   this program; if not, write to the Free Software Foundation, Inc., 59 Temple
   Place - Suite 330, Boston, MA  02111-1307, USA.
*)

let app_info = { Optpp.default_app_info with Optpp.version = Config_gen.version }

let default_encoding = Config_gen.default_encoding

let prefix () = Config_gen.prefix

(*
Optpp.cliWarning (Printf.sprintf "prefix=%s" (prefix ()))
*)

let lib_file fname = 
  if String.sub fname 0 1 <> "/" then 
    Filename.concat (prefix ()) fname
  else fname
  
let ivar_prefix = "int"
and svar_prefix = "str"

(* let src_ext = "ke" *)

(* for more convenient use with reallive debug mode and RealLiveMax compiler *)

(*
let src_ext = ref "org"
*)
