BlocksToMove = 10

function move(distance)
	for moveblock=0,distance,1
	do
		turtle.forward()
	end
return 0;
end

function goback()
	turtle.turnLeft()
	turtle.turnLeft()
	moving = true
	while (moving == true)
	do
		if turtle.getFuelLevel() < BlocksToMove
		then
			turtle.select(16)
			turtle.refuel()
			turtle.select(1)
		end
		move(BlocksToMove)
		if turtle.detect()==true
		then
			moving = 0
		end
	end
	turtle.turnLeft()
	turtle.turnLeft()
return 0;
end

islighting = true

while (islighting == true)
	do
	if turtle.getFuelLevel() < BlocksToMove
	then
		turtle.select(16)
		turtle.refuel()
		turtle.select(1)
	end
	move(BlocksToMove)
	turtle.placeDown()
	if turtle.detect()==true
	then
		islighting = false
	end
end

goback()
