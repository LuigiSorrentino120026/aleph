:- module(test_aleph,
  [test_aleph/0]).
:- use_module(library(plunit)).


test_aleph:-
  run_tests.



:- begin_tests(train, []).

:-ensure_loaded(library(examples/train)).

test(induce,[true(Program= [(eastbound(_592):-has_car(_592, _604),short(_604),closed(_604))])]):-
  induce(Program).

:- end_tests(train).
