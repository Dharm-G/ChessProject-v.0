function createPieces(col,type,b) -- Creates the pieces
	lst = {}
	if col == "w" then
		for c = 1,b,1 do 
			-st[c] = {"",0,0,0,0,true,{.5,0.5,0}}
			lst[c][1] = type
		end
		return lst
	end
			for c = 1,b,1 do 
			lst[c] = {"",0,0,0,0,true,{0,.5,.5}}
			lst[c][1] = type
		end
	return lst
end

function initalizePosAndSize(set1,set2,board) -- Sets starting pos based on side color 
	temp = board
		temp[1][1][10][1] = set1[2][1]; temp[1][8][10][1] = set1[2][2];--white rooks
		temp[1][2][10][1] = set1[3][1]; temp[1][7][10][1] = set1[3][2]; -- white knight
		temp[1][3][10][1] = set1[4][1]; temp[1][6][10][1] = set1[4][2]; -- white bishop
		temp[1][4][10][1] = set1[5][1]; temp[1][5][10][1] = set1[6][1]; -- white king and queen
		temp[2][1][10][1] = set1[1][1]; temp[2][2][10][1] = set1[1][2];temp[2][3][10][1] = set1[1][3];temp[2][4][10][1] = set1[1][4]; -- white pawn 1-4
		temp[2][5][10][1] = set1[1][5]; temp[2][6][10][1] = set1[1][6];temp[2][7][10][1] = set1[1][7];temp[2][8][10][1] = set1[1][8]; --white pawn 5-8

		temp[8][1][10][1] = set2[2][1]; temp[8][8][10][1] = set2[2][2];--black rooks
		temp[8][2][10][1] = set2[3][1]; temp[8][7][10][1] = set2[3][2]; --black knight
		temp[8][3][10][1] = set2[4][1]; temp[8][6][10][1] = set2[4][2]; -- black bishop
		temp[8][4][10][1] = set2[5][1]; temp[8][5][10][1] = set2[6][1]; -- black king and queen
		temp[7][1][10][1] = set2[1][1]; temp[7][2][10][1] = set2[1][2];temp[7][3][10][1] = set2[1][3];temp[7][4][10][1] = set2[1][4]; -- black pawn 1-4
		temp[7][5][10][1] = set2[1][5]; temp[7][6][10][1] = set2[1][6];temp[7][7][10][1] = set2[1][7];temp[7][8][10][1] = set2[1][8]; --black pawn 5-8
		
		return temp
end

function createNewSet(white,black) -- Creates new black and white chess piece set
	black= {}
	white = {}
		white[1] = createPieces("w","pawn",8)
		white[2] = createPieces("w","rook",2)
		white[3] = createPieces("w","knight",2)
		white[4] = createPieces("w","bishop",2)
		white[5] = createPieces("w","queen",1)
		white[6] = createPieces("w","king",1)

		black[1] = createPieces("b","pawn",8)
		black[2] = createPieces("b","rook",2)
		black[3] = createPieces("b","knight",2)
		black[4] = createPieces("b","bishop",2)
		black[5] = createPieces("b","queen",1)
		black[6] = createPieces("b","king",1)

	return white,black
end



function drawPieces(board)
		for  y = 1,#board,1 do 
				for x = 1,#board[y] do 
						if #board[y][x][10] > 0 then
								love.graphics.setColor(board[y][x][10] [1][7][1],board[y][x][10] [1][7][2],board[y][x][10] [1][7][3])
								love.graphics.rectangle("fill",board[y][x][3]+ (board[y][x][5]/4),board[y][x][4] +  (board[y][x][6]/4),board[y][x][5]/2,board[y][x][6]/2)
						end
				end
		end
end


