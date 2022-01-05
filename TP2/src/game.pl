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

% lista de jogadas válidas
% valid_moves(+GameState, +Player, +Move, -IsValid)
validateMove(GameState, Player, Move, IsValid):- % get start and end locations
                                                    nth0(0, Move, Start),
                                                    nth0(1, Move, End),
                                                    % get coordinates of player move
                                                    nth0(0, Start, X),
                                                    nth0(1, Start, Y),
                                                    % get coordinates of player move destination
                                                    nth0(0, End, X1),
                                                    nth0(1, End, Y1),
                                                    % get player move
                                                    nth0(X, GameState, R),
                                                    nth0(Y, R, I),
                                                    % get player destination
                                                    nth0(X1, GameState, C),
                                                    nth0(Y1, C, I1),
                                                    % check if move if from player
                                                    (I == Player ->
                                                    % check if destination is clear
                                                    (I1 == 0 ->
                                                    % possible moves
                                                    % down right
                                                    X2 is X+1,
                                                    Y2 is Y+1,
                                                    (X2 == X1 ->
                                                    (Y2 == Y1 ->
                                                    IsValid = true;
                                                    write(''));
                                                    write('')),
                                                    % down left
                                                    X3 is X+1,
                                                    Y3 is Y-1,
                                                    (X3 == X1 ->
                                                    (Y3 == Y1 ->
                                                    IsValid = true;
                                                    write(''));
                                                    write('')),
                                                    % up right
                                                    X4 is X-1,
                                                    Y4 is Y+1,
                                                    (X4 == X1 ->
                                                    (Y4 == Y1 ->
                                                    IsValid = true;
                                                    write(''));
                                                    write('')),
                                                    % up left
                                                    X5 is X-1,
                                                    Y5 is Y-1,
                                                    (X5 == X1 ->
                                                    (Y5 == Y1 ->
                                                    IsValid = true;
                                                    write(''));
                                                    write(''));
                                                    write(''));
                                                    write('')),
                                                    (IsValid \= true ->
                                                    IsValid = false;
                                                    write('')).

% deteção de final de jogo
% game_over(+GameState, -Winner)