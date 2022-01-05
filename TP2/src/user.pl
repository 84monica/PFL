% INTERAÇÂO COM O JOGADOR

:- consult('utils.pl').

% get user move
% getMove(-Move, +Player)
getMove(Move, Player):- write('Player '), write(Player), write(', make your move! (e.g. "03 12".)'), 
                        nl,
                        write('Press 1 to quit\n'),
                        read(Input),
                        (Input == 1 ->
                        % leaves game
                        % returns funtion with move -1
                        Move = -1;
                        % check if input is valid
                        validateInput(Input, IsValid),
                        (IsValid == true -> 
                        process(Input, Move);
                        % if input is invalid ask again for input
                        write('Invalid Input!\n'),
                        getMove(Move, Player))).

% process information of user input
% transforms input into playable move
% process(+Input, -Move)
process(Input, Move):- % get numbers from input
                    nth0(0, Input, A1),
                    nth0(1, Input, A2),
                    nth0(3, Input, A3),
                    nth0(4, Input, A4),
                    % convert ascii to number
                    number_codes(N1, [A1]),
                    number_codes(N2, [A2]),
                    number_codes(N3, [A3]),
                    number_codes(N4, [A4]),
                    % make move list
                    L = [[0, 0], [0, 0]],
                    replace(0, L, [N1, N2], L1),
                    replace(1, L1, [N3, N4], Move).

% validate user input
% validateInput(+Input, -IsValid)
validateInput(Input, IsValid):- 
                                    % length of user input has to be 4
                                    length(Input, L),
                                    (L == 5 -> 
                                    % get content of input
                                    nth0(0, Input, A1),
                                    nth0(1, Input, A2),
                                    nth0(2, Input, A3),
                                    nth0(3, Input, A4),
                                    nth0(4, Input, A5),
                                    % check space
                                    (A3 == 32 ->
                                    % convert ascii to number
                                    number_codes(N1, [A1]),
                                    number_codes(N2, [A2]),
                                    number_codes(N4, [A4]),
                                    number_codes(N5, [A5]),
                                    % content of user input has to be between 0 and 4
                                    (N1 >= 0 -> (N1 =< 4 -> 
                                    (N2 >= 0 -> (N2 =< 4 ->
                                    (N4 >= 0 -> (N4 =< 4 ->
                                    (N5 >= 0 -> (N5 =< 4 ->
                                     % if conditions conditions are true then input is valid
                                    IsValid = true; 
                                     % if conditions conditions are not true then input is invalid
                                    IsValid = false);IsValid = false);IsValid = false);IsValid = false);IsValid = false);IsValid = false);IsValid = false);IsValid = false);IsValid = false);IsValid = false).

% validate user move
% validateMove(+GameState, +Player, +Move, -IsValid)
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
                                                (IsValid == true ->
                                                write('');
                                                IsValid = false).