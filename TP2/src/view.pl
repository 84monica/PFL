% VISUALIZAÇÃO DO JOGO

:- use_module(library(lists)).
:- consult('board.pl').

% display_game(+GameState)
display_game(GameState):- % show board
                          write('       0   1   2   3   4'),
                          nl,
                          write('     _____________________'),
                          nl, nl,
                          showRow(0, 4, GameState),
                          nl,
                          write('     _____________________').

% console clear
cls :- write('\33\[2J').

% show rows
showRow(F, L, GameState):- (F =\= L ->
                            N is F + 1,
                            % iterates player pieces
                            write(F),
                            write('  |'),
                            showCol(0, 4, F, GameState),
                            write('   |'), nl,
                            write('   |                       |\n'),
                            showRow(N, L, GameState);
                            % iterates player pieces
                            write(F),
                            write('  |'),
                            showCol(0, 4, F, GameState),
                            write('   |')
                            ).

% show columns
showCol(F, L, R, GameState):- % display player pieces
                            (F =\= L ->
                            N is F + 1,
                            % get row
                            nth0(R, GameState, R1),
                            % get item
                            nth0(F, R1, I),
                            write('   '),
                            write(I),
                            showCol(N, L, R, GameState);
                            % get row
                            nth0(R, GameState, R1),
                            % get item
                            nth0(F, R1, I),
                            write('   '),
                            write(I)
                            ).



%startBoard(_B), display_game(_B).