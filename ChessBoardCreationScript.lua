function createCell(cellIndexX,cellIndexY,xPos,yPos,xSize,ySize,colorVals)
	temp = {}
	temp[1] = cellIndexX
	temp[2] = cellIndexY
	temp[3] = xPos
	temp[4] = yPos
	temp[5] = xSize
	temp[6] = ySize
	temp[7] = colorVals[1]
	temp[8] = colorVals[2]
	temp[9] = colorVals[3]
	temp[10] = {}

	return temp
end

function createBoard()
	op = true
	tmp = {}
	ct = {}
	w,h = love.graphics.getWidth()/8,love.graphics.getHeight()/8
	e = 0
	for i = 1,8,1 do 
		op = not op
		subTmp = {}
   		for p = 1,8,1 do 
        		if op then ct = {0,0,0}  else ct = {1,1,1}  end
			subTmp[p] = createCell(i,p,(p-1)*w,(i-1)*h,w,h,ct)
        		op = not op
   		end
	tmp[i] = subTmp
 	end
	return tmp
end

function drawBoard(c)
	for i = 1,#c,1 do
		for x = 1,#c[i],1 do 
			love.graphics.setColor(c[i][x][7],c[i][x][8],c[i][x][9])
			love.graphics.rectangle("fill",c[i][x][3], c[i][x][4], c[i][x][5], c[i][x][6])
		end
	end
end