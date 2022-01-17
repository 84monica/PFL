% JOGADA DO COMPUTADOR

:- use_module(library(random)).

% choose_move(+GameState, +Level, +Player, -Move)
choose_move(GameState, Level, Player, Move):- (Level == 1 ->
                                            % get player start location 
                                            random(0, 5, N1),
                                            random(0, 5, N2),
                                            % get piece from board
                                            nth0(N1, GameState, X),
                                            nth0(N2, X, I),
                                            % if piece is not from computer start again
                                            (I == Player ->
                                            % random destination
                                            random(0, 5, N3),
                                            random(0, 5, N4),
                                            % check if move is valid
                                            validateMove(GameState, Player, [[N1, N2], [N3, N4]], IsValid),
                                            (IsValid == false ->
                                            % if move is invalid chose another move
                                            choose_move(GameState, Level, Player, Move);
                                            % if move if valid get Move
                                            Move = [[N1, N2], [N3, N4]]);
                                            choose_move(GameState, Level, Player, Move));
                                            % do nothing
                                            write('')).