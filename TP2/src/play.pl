% PREDICADO PRINCIPAL play/0

:- use_module(library(lists)).
:- consult('board.pl'). % board initalization
:- consult('view.pl'). % board interface
:- consult('game.pl'). % game logic
:- consult('menus.pl'). % game menus
:- consult('user.pl'). % user interaction
:- consult('computer.pl'). % bot

play:-  % shows main menu
        mainMenu,
        read(Input),

        % play with computer

        % play with friend
        (Input == 2 ->
        % intializes board
        startBoard(Board), 
        % starts game loop 
        % player 1 plays first 
        gameLoop(1, Board);
        write('Wrong Input!')).
        

gameLoop(Player, GameState):-
                        % display board
                        display_game(GameState),
                        % ask player for move
                        % if move is invalid ask again
                        getMove(Move, Player), 
                        % makes move
                        % and returns new gamestate
                        move(GameState, Player, Move, NewBoard),
                        % changes player and continues loop
                        (Player == 1 ->
                        gameLoop(2, NewBoard);
                        gameLoop(1, NewBoard)).

%consult('/home/monica/Documentos/FEUP/3/1/PFL/PFL/TP2/src/play.pl').