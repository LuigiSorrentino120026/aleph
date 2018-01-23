:- module(test_aleph,
  [test_aleph/0]).
:- use_module(library(plunit)).


test_aleph:-
  run_tests.



:- begin_tests(features, []).

:-ensure_loaded(library(examples/features)).

test(induce_features,[true(Program= [(eastbound(_592):-has_car(_592, _604),short(_604),closed(_604))])]):-
   induce_features(Features).

:- end_tests(features).