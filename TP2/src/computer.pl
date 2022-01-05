% JOGADA DO COMPUTADOR

:- use_module(library(random)).

% choose_move(+GameState, +Level, -Move)
choose_move(GameState, Level, Move):- (Level == 1 ->
                                        % get player start location 
                                        random(0, 5, N1),
                                        random(0, 5, N2),
                                        % get piece from board
                                        nth0(N1, GameState, X),
                                        nth0(N2, X, I),
                                        % if piece is not from computer start again
                                        (I == 2 ->
                                        % random destination
                                        random(0, 5, N3),
                                        random(0, 5, N4),
                                        % check if move is valid
                                        validateMove(GameState, 2, [[N1, N2], [N3, N4]], IsValid),
                                        (IsValid == false ->
                                        % if move is invalid chose another move
                                        choose_move(GameState, Level, Move);
                                        % if move if valid get Move
                                        Move = [[N1, N2], [N3, N4]]);
                                        choose_move(GameState, Level, Move));
                                        % do nothing
                                        write('')).