% JOGADA DO COMPUTADOR

:- use_module(library(random)).

% choose_move(+GameState, +Level, -Move)
choose_move(GameState, Level, Move):- (Level == 1 ->
                                        % get valid move list

                                        % random move from valid moves list
                                        write('')
                                        ;
                                        % do nothing
                                        write('')).


% TO TEST 
% startBoard(B), choose_move(B, 1, M).