(*
                         CS 51 Problem Set 1
                Core Functional Programming -- Testing
*)                           

open Ps1 ;;

(* The Absbook module contains simple functions for unit testing:
   `unit_test` and `unit_test_within`. *)
open CS51Utils ;;
open Absbook ;;
  
let nonincreasing_test () =
  unit_test (nonincreasing [])
            "nonincreasing empty";
  unit_test (nonincreasing [7])
            "nonincreasing single";
  unit_test (nonincreasing [4;4;4])
            "nonincreasing repeat";
  unit_test (not (nonincreasing [2;1;2]))
            "nonincreasing inc at start";
  unit_test (nonincreasing [2;2;1])
            "nonincreasing dups";
  unit_test (nonincreasing [9;8;7;6;5;5;5;4;4;-2])
            "nonincreasing long with neg";
  unit_test (not (nonincreasing [9;8;7;6;7;5;5;5;5;4;3]))
            "nonincreasing long inc at mid" ;;
  
let test_all () =
  nonincreasing_test () ;;

let _ = test_all () ;;
