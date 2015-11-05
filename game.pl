:- include('gamepvp.pl').
:- include('gamepvb.pl').
:- include('bot.pl').
:- include('display.pl').
:- include('input.pl').
:- include('validation.pl').
:- include('utilities.pl').

% Start the game  
startPvP(COLS, ROWS) :-     createBoard(BOARD, COLS, ROWS),
                            initialPlayPvP(BOARD).
startPvB(COLS, ROWS) :-     createBoard(BOARD, COLS, ROWS),
                            initialPlayPvB(BOARD).

% Next player (current player - next player)
nextPlayer(1, 2).
nextPlayer(2, 1).
