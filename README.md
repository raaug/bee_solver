* bee_solver.pl -- A program to solve NY Times word game "spelling bee"
*** Author: Ray47
*** Rev 0.9
** For development I used a clone of the NY Times game "freebee"
** It can be found at https://freebee.fun
** The solver requires a dictionary listing of English words.
** Fortunatly freebee uses an open source dictionary and provides a link to
** where it can be downloaded:
** http://www.bananagrammer.com/2013/12/the-amazing-enable-word-list-project.html
* To run the solver:
** At the command line: $ perl bee_solver.pl 'ewihtda'
** Or modify the permissions to allow execution of the perl script.
*** $ chmod +x bee_solver.pl
*** $ ./bee_solver 'ewihtda'
** The program dumps it's output to the STDOUT (standard output).
** The 7 character string are the 7 letters specified by the game.
** Note that the 4th character must be the central character of the game board.
