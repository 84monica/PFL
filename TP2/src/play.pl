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

        % intializes board
        startBoard(Board),

        % play with friend
        (Input == 1 ->
        % starts game loop 
        % player 1 plays first 
        gameLoop(1, Board);
        write('')),

        % play with computer
        (Input == 2 ->
        % starts game loop
        computerGameLoop(Board);
        write('')),
        
        % computer vs computer

        % exit
        (Input == 4 ->
        write('Exiting Game ...');
        write('')).

computerGameLoop(GameState):-   % PLAYER MOVE
                                % PLAYER 1
                                % display board
                                display_game(GameState),
                                % ask player for move
                                getMove(Move, 1),

                                % if player wants to leave game
                                (Move == -1 ->
                                write('Player 1 left the game.\n');

                                % if move is invalid ask again
                                validateMove(GameState, 1, Move, IsValid),
                                (IsValid == false ->
                                computerGameLoop(GameState);
                                write('')),

                                % makes move and returns new gamestate
                                move(GameState, 1, Move, NewBoard),

                                % check if player 1 won
                                game_over(NewBoard, Winner),
                                (Winner == 1 ->
                                % call game over menu
                                gameOverMenu(Winner);
                                
                                % COMPUTER MOVE
                                % PLAYER 2
                                choose_move(NewBoard, 1, ComputerMove),
                                % makes move and returns new gamestate
                                move(NewBoard, 2, ComputerMove, ComputerNewBoard),

                                % check if computer won
                                game_over(ComputerNewBoard, Winner),
                                (Winner == 2 ->
                                gameOverMenu(Winner);
                                % game loop
                                computerGameLoop(ComputerNewBoard)))).

gameLoop(Player, GameState):-
                                % display board
                                display_game(GameState),
                                % ask player for move
                                getMove(Move, Player),

                                % if player wants to leave game
                                (Move == -1 ->
                                write('Player '), write(Player), write(' left the game.\n');

                                % if move is invalid ask again
                                validateMove(GameState, Player, Move, IsValid),
                                (IsValid == false ->
                                gameLoop(Player, GameState);
                                write('')),

                                % makes move and returns new gamestate
                                move(GameState, Player, Move, NewBoard),

                                % check if any player won
                                game_over(NewBoard, Winner),
                                (Winner == 1 ->
                                % call game over menu
                                gameOverMenu(Winner);
                                (Winner == 2 ->
                                gameOverMenu(Winner);
                                % if no player has won then
                                % changes player and continues loop
                                (Player == 1 ->
                                gameLoop(2, NewBoard);
                                gameLoop(1, NewBoard))))).

%consult('/home/monica/Documentos/FEUP/3/1/PFL/PFL/TP2/src/play.pl').