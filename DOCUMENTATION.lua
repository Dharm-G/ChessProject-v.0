--[[ 
TABLE OF CONTENTS:---------------------------------------------
1. How to read Chess TABLE
2.How  to read Cell DATA
3.Board Structure 
4. Chess Piece Info
-----------------------------------------------------------------------------------



1. HOW TO READ CHESS TABLE----------------------------------

rkbqk = chess piece at start pos
8x8 grid chess cell index
1 [1][2][3][4][5][6][7][8]
     r    k   b   q   k    b    k    r
2 [1][2][3][4][5][6][7][8]
   p  p  p  p  p  p  p  p
3 [1][2][3][4][5][6][7][8]
4 [1][2][3][4][5][6][7][8]
5 [1][2][3][4][5][6][7][8]
6 [1][2][3][4][5][6][7][8]
   p  p  p  p  p  p  p  p
7 [1][2][3][4][5][6][7][8]
      r    k   b   k   q    b    k    r
8 [1][2][3][4][5][6][7][8]


ex. board[2][4] = cell 4,2
    board[2][4][10] = chess peice at 4,2
--------------------------------------------------------------------------------------


2. HOW TO READ CELL DATA-------------------------------------
1. X Cell index
2. Y Cell index
3. X position of cell on render
4. Y position of cell on render
5. X size of cell on render
6. Y size of cell on render
7. X Color val for cell render
8. Y color val for cell render
9. Z color val for cell render
10.Chess piece in cell 

------------------------------------------------------------------------------------

3.BOARD STRUCTURE-----------------------------------------------

ChessBoard{
row 1 {
			cell1{
					...
					[10] chess piece at cell{
																 Chess piece stats
																}
					},
			cell2{...}
			....
			},
row 2{...}
....
}
--------------------------------------------------------------------------------------

4.CHESS PIECE INFO-----------------------------------------------------
1.type of chess peice 
2. x index
3. y index 
4. x size 
5. y size 
6. alive
7. color  values

                                 cell,  piece, stat
ex.  board[1][1][10]    [1]        [1] = "pawn"
---------------------------------------------------------------------------------------









--]]