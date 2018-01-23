:- module(test_aleph,
  [test_aleph/0]).
:- use_module(library(plunit)).


test_aleph:-
  run_tests.



:- begin_tests(posonly, []). /*da vedere meglio, va a volte*/

:-ensure_loaded(library(examples/posonly)).

test(induce,[true(Program= [(class(_604, reptile):-has_covering(_604, scales)), (class(_628, fish):-has_gills(_628)), (class(_650, mammal):-has_covering(_650, hair)), (class(_674, bird):-has_covering(_674, feathers))])]):-
  induce(Program).

:- end_tests(posonly).

