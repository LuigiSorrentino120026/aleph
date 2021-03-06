:- module(test_aleph,
  [test_aleph/0]).
:- use_module(library(plunit)).


test_aleph:-
  run_tests.



:- begin_tests(recursion, []).

:-ensure_loaded(library(examples/recursion)).

test(induce,[true(Program= [mem(3, [4, 2, 3]), mem(3, [2, 3]), mem(2, [2, 3]), mem(2, [3, 2]), mem(2, [2, 2]), mem(1, [1, 2]), mem(1, [2, 1]), mem(1, [1, 1]), mem(0, [2, 0]), mem(0, [1, 0]), mem(1, [0, 1]), mem(0, [0, 2]), mem(0, [0, 1]), mem(0, [0, 0]), mem(4, [4]), mem(3, [3]), mem(2, [2]), mem(1, [1]), mem(0, [0])])]):-
  induce(Program).

:-end_tests(recursion).

