% PREDICADO PRINCIPAL play/0

:- use_module(library(lists)).
:- consult('board.pl'). % board initalization
:- consult('view.pl'). % board interface
:- consult('game.pl'). % game logic
:- consult('menus.pl'). % game menus
:- consult('user.pl'). % user interaction

play:-
        % intializes board
        startBoard(Board), 
        % starts game loop 
        % player 1 plays first 
        gameLoop(1, Board).
        

gameLoop(Player, GameState):-
                        % display board
                        display_game(GameState),
                        % makes move
                        getMove(Move, Player), 
                        move(GameState, Player, Move, NewBoard),
                        % changes player
                        % returns new gamestate
                        (Player == 1 ->
                        gameLoop(2, NewBoard);
                        gameLoop(1, NewBoard)).

