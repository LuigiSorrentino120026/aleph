:- module(test_aleph,
  [test_aleph/0]).
:- use_module(library(plunit)).


test_aleph:-
  run_tests.



:- begin_tests(refine, []).

:-ensure_loaded(library(examples/refine)).

test(induce_features,[true(Program= [(eastbound(_592):-has_car(_592, _604),short(_604),closed(_604))])]):-
  induce(Program).

:- end_tests(refine).
