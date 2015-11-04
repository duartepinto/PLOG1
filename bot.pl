:- use_module(library(random)).
:- include('validation.pl').
:- include('utilities.pl').

% Generate a random coordinate
getRandomCoord(BOARD, COLUMN, ROW) :-   getNumberRows(BOARD, NROWS),
                                        getNumberCols(BOARD, NCOLS),
                                        randomColumn(NCOLS, C1),
                                        randomRow(BOARD, R1)
                                        (validCoords(BOARD, C1, R1) ->
                                                true;
                                                !,
                                                getRandomCoord(BOARD, COLUMN, ROW)).
% Random column between 0 and number columns
randomColumn(NCOLS, RESULT) :-  MAX_COL is NCOLS - 1,
                                random_between(0, MAX_COL, RESULT).
% Random row between 0 and number rows
randomRow(NROWS, RESULT) :- MAX_ROW is NROWS - 1,
                            random_between(0, MAX_ROW, RESULT).