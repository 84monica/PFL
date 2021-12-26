% replate element of list
% replace(+Index, +List, +Element, -NewList)
replace(I, L, E, K) :-
                    nth0(I, L, _, R),
                    nth0(I, K, E, R).

% iterates board
% loop(+FirstValue, +LastValue, +GameState, +Player, -ListOfMoves)
loop(F, L, GameState, P, M):- (F =\= L ->
                                N is F + 1,
                                % iterates player pieces
                                loop1(0, 4, F, P, GameState, M),
                                nl,
                                loop(N, L, GameState, P, M);
                                % iterates player pieces
                                loop1(0, 4, F, P, GameState, M)
                                ).

% iterates a row
% loop(+FirstValue, +LastValue, +Row, +Player, +GameState, -Move)
loop1(F, L, R, P, GameState, M):- (F =\= L ->
                                    N is F + 1,
                                    write(F),
                                    % get row
                                    nth0(R, GameState, R1),
                                    write(R1),
                                    % get item
                                    nth0(F, R1, I),
                                    (I == P -> possibleMove(GameState, R, F, M); write('')),
                                    nl,
                                    loop1(N, L, R, P, GameState, M);
                                    % get row
                                    nth0(R, GameState, R1),
                                    write(R1),
                                    % get item
                                    nth0(F, R1, I),
                                    (I == P -> possibleMove(GameState, R, F, M); write(''))
                                    ).

% verifies if move is possible
% possibleMove(+GameState, +Row, +Index, -Move)
possibleMove(GameState, R, I, M):- 
                                    R1 is R+1,
                                    I1 is I+1,
                                    (I1 < 4 -> 
                                    nth0(R1, GameState, R2),
                                    nth0(I1, R2, I2),
                                    (I2 == 0 -> 
                                    % append possible move to List of Moves
                                    append(M, [[[R, I], [R1, I1]]], M1),
                                    write(R),
                                    write(I); write(''));
                                    write('')).