% LÓGICA DO JOGO EM SI

:- consult('utils.pl').

% execução de jogada
% move(+GameState, +Player, +Move, -NewGameState)
%--------------------------------------
%           start    end
% cordenadas x  y    x  y 
% +Move -> [[0, 3], [1, 2]]
move(GameState, Player, Move, NewGameState):-
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
                                        (Player == 1 -> replace(Y1, C, 1, C1); replace(Y1, C, 2, C1)),
                                        % replace new row in newGameState
                                        replace(X1, A, C1, NewGameState).

% deteção de final de jogo
% game_over(+GameState, -Winner)
game_over(GameState, Winner):- % verifies if player 1 is winner
                                % get row index 4
                                nth0(4, GameState, Row),
                                % check if player 1 pieces are there
                                (Row == [1, 1, 1, 1, 1] ->
                                nth0(3, GameState, Row3),
                                nth0(0, Row3, Item1),
                                (Item1 == 1 ->
                                nth0(4, Row3, Item2),
                                (Item2 == 1 ->
                                % if conditions are true then player 1 is the winner
                                Winner = 1;
                                write('')); write('')); write('')),
                                %verifies if player 2 is winner
                                % get row index 0
                                nth0(0, GameState, Row0),
                                % check if player 2 pieces are there
                                (Row0 == [2, 2, 2, 2, 2] ->
                                nth0(1, GameState, Row1),
                                nth0(0, Row1, Item3),
                                (Item3 == 2 ->
                                nth0(4, Row1, Item4),
                                (Item4 == 2 ->
                                % if conditions are true then player 2 is the winner
                                Winner = 2;
                                write('')); write('')); write('')).