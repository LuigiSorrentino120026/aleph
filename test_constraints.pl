:- module(test_aleph,
  [test_aleph/0]).
:- use_module(library(plunit)).


test_aleph:-
  run_tests.



:- begin_tests(constraints, []).

:-ensure_loaded(library(examples/constraints)).

test(induce_constraints,[true(Program = [(human(X) :- male(X)), (human(X) :- female(X)), human('Fred', 'Wilma')])]):-
  induce_constraints(Constraints).

:- end_tests(constraints).