% INTERAÇÂO COM O JOGADOR

:- consult('utils.pl').

% get user move
% getMove(-Move)
getMove(Move, Player):- write('Player '), write(Player), write(', make your move! (e.g. "03 12".)'), 
                        nl,
                        read(Input),
                        process(Input, Move).

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
% validateInput(+Input, -isValid)