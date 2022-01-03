% replate element of list
% replace(+Index, +List, +Element, -NewList)
replace(I, L, E, K) :-
                    nth0(I, L, _, R),
                    nth0(I, K, E, R).

