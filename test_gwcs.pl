:- module(test_aleph,
  [test_aleph/0]).
:- use_module(library(plunit)).


test_aleph:-
  run_tests.


:- begin_tests(modes, []).

:-ensure_loaded(library(examples/gcws)).

test(gcws,[true(Program= [(normal(A) :- not ab0(A), ab0(A) :- div4(A), not ab1(A),ab1(A) :- div100(A), not ab2(A), ab2(A) :-  div400(A))])]):-
  rdhyp(normal(_A)), sphyp(Program).

:- end_tests(modes).

