:- module(test_aleph,
  [test_aleph/0]).
:- use_module(library(plunit)).


test_aleph:-
  run_tests.



:- begin_tests(weather, []).

:-ensure_loaded(library(examples/weather)).

test(induce_tree,[true(Program= [class(A,B) :- not(outlook(A,rain),windy(A,true)), outlook(A,sunny), humidity(A,C), lteq(C,70), random(B,[0.75-play,0.25-dont_play]), class(A,B) :- not(outlook(A,rain),windy(A,true)), outlook(A,sunny), not(humidity(A,C),lteq(C,70)), random(B,[0.8-dont_play,0.2-play]), class(A,B) :- not(outlook(A,rain),windy(A,true)), not(outlook(A,sunny)), random(B,[0.888889-play,0.111111-dont_play]), class(A,B) :- outlook(A,rain), windy(A,true), random(B,[0.75-dont_play,0.25-play])])]):-
  induce_tree.

:- end_tests(weather).

