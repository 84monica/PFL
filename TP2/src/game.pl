% LÓGICA DO JOGO EM SI

:- use_module(library(lists)).
:- consult('board.pl').
:- consult('player.pl').
:- consult('utils.pl').

% execução de jogada
% move(+GameState, +Move, -NewGameState)
%--------------------------------------
%           start    end
% cordenadas x  y    x  y 
% +Move -> [[0, 3], [1, 2]]
move(GameState, Move, NewGameState):-
                                    % get start and end locations
                                    nth0(0, Move, Start),
                                    nth0(1, Move, End),
                                    % get coordinates of player move
                                    nth0(0, Start, X),
                                    nth0(1, Start, Y),
                                    % get coordinates of player move destination
                                    nth0(0, End, X1),
                                    nth0(1, End, Y1),

                                    % get row of player move
                                    nth0(X, GameState, R),
                                    % get row of player destination
                                    nth0(X1, GameState, C),

                                    % replace player move with zero
                                    replace(Y, R, 0, R1),
                                    % replace new row in newGameState
                                    replace(X, GameState, R1, A),
                                    
                                    % replace player move destination with one or two (depending on the player)
                                    player(P, true),
                                    (P == 1 -> replace(Y1, C, 1, C1); replace(Y1, C, 2, C1)),
                                    % replace new row in newGameState
                                    replace(X1, A, C1, NewGameState).

%startBoard(_B), A = [[0, 3], [1, 2]], move(_B, A, X).  

% lista de jogadas válidas
% valid_moves(+GameState, -ListOfMoves)
valid_moves(GameState, ListOfMoves):-   % check wich player is playing
                                        player(P, true),
                                        % iterates board to get possible moves of the current player
                                        loop(0, 4, GameState, P, ListOfMoves).

%startBoard(_B), valid_moves(_B, X).  

% deteção de final de jogo
% game_over(+GameState, -Winner)


