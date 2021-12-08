require("ChessBoardCreationScript")
require("ChessPieceCreationScript")

function love.load() -- Initialize to set up window, create board and create pieces 
	love.window.setTitle("Chess v.0")
	success = love.window.setMode( 800, 800, flags )

	chessBoard = createBoard()
	white,black = createNewSet({},{})
	chessBoard = initalizePosAndSize(white,black,chessBoard)
end


function love.draw() -- renders chess board and chess pieces 
	drawBoard(chessBoard)
	drawPieces(chessBoard)
end






