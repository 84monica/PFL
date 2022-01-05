% JOGADA DO COMPUTADOR

:- use_module(library(random)).

% choose_move(+GameState, +Level, -Move)
choose_move(GameState, Level, Move):- (Level == 1 ->
                                        
                                        write('')
                                        ;
                                        % do nothing
                                        write('')).


% TO TEST 
% startBoard(B), choose_move(B, 1, M).