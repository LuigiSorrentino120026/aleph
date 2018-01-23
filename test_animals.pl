:- module(test_aleph,
  [test_aleph/0]).
:- use_module(library(plunit)).


test_aleph:-
  run_tests.


:- begin_tests(animals, []).

:-ensure_loaded(library(examples/animals)).

test(induce_tree,[true(Program = [(nhas_gills(X) :- animal(X), not(has_gills(Y))), nhas_gills(bat, penguin)])]):-
  induce_tree.

:- end_tests(animals).