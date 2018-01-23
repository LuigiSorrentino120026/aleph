:- module(test_aleph,
  [test_aleph/0]).
:- use_module(library(plunit)).


test_aleph:-
  run_tests.



:- begin_tests(good, []).

:-ensure_loaded(library(examples/good)).

test(induce_features,[true(Program= [(eastbound(_592):-has_car(_592, _604),short(_604),closed(_604))])]):-
  reduce_and_show(good).

:- end_tests(good).
