% REPRESENTAÇÃO DO ESTADO DO TABULEIRO

% Sem peça - 0
% Player 1 - 1
% Player 2 - 2

% Tabuleiro Inicial
startBoard(
    [
    [1, 1, 1, 1, 1],
    [1, 0, 0, 0, 1],
    [0, 0, 0, 0, 0],
    [2, 0, 0, 0, 2],
    [2, 2, 2, 2, 2]
    ]
).

% Exemplo de Tabuleiro Final (Player 1 vencedor)
endBoard1(
    [
    [2, 2, 0, 0, 2],
    [2, 2, 0, 0, 2],
    [0, 0, 0, 2, 0],
    [1, 0, 0, 0, 1],
    [1, 1, 1, 1, 1]
    ]
).

% Exemplo de Tabuleiro Final (Player 2 vencedor)
endBoard2(
    [
    [2, 2, 2, 2, 2],
    [2, 0, 0, 0, 2],
    [0, 1, 0, 1, 0],
    [0, 0, 1, 0, 0],
    [1, 0, 1, 1, 1]
    ]
).

% Exemplos de Tabuleiros Intermédios
gameState(
    [
    [1, 0, 1, 1, 1],
    [1, 0, 1, 0, 0],
    [0, 2, 0, 1, 0],
    [0, 0, 2, 0, 2],
    [2, 0, 2, 2, 2]
    ]
).

gameState1(
    [
    [2, 0, 2, 2, 2],
    [2, 0, 2, 0, 0],
    [0, 0, 0, 2, 0],
    [1, 0, 1, 0, 1],
    [1, 0, 1, 1, 1]
    ]
).

gameState2(
    [
    [2, 0, 2, 2, 2],
    [2, 0, 2, 0, 2],
    [0, 0, 0, 0, 0],
    [1, 0, 1, 0, 1],
    [1, 0, 1, 1, 1]
    ]
).