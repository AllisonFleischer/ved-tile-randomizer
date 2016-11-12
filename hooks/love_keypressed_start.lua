if nodialog and editingroomtext == 0 and editingroomname == false and (state == 1) and (key == "r") and (love.keyboard.isDown("l" .. ctrl) or love.keyboard.isDown("r" .. ctrl)) then

	levelmetadata[(roomy)*20 + (roomx+1)].auto2mode = 0
	levelmetadata[(roomy)*20 + (roomx+1)].directmode = 1

	mt = {}

	for i = 1, 2 do
		mt[i] = {}

		for j = 1, 2 do
				mt[i][j] = 0
		end
	end

	--[[
	mt[x][1]: Set of tile numbers to replace
	mt[x][2]: Normal array of tile numbers to replace with
	]]

	-- Here's the biggest hardcoded nonsense to change for 1.0
	mt[1][1] = Set {6,7,53,54,55,56,57,58,59,60,61,62,65,66,67,68,69,70,71,72,73,74}
	mt[1][2] = {6,7,53,54,55,56,57,58,59,60,61,62,65,66,67,68,69,70,71,72,73,74}
	mt[2][1] = Set {0}
	mt[2][2] = {20}

	for mtCount = 1,#mt do
		for i=1,1200 do
			if mt[mtCount][1][roomdata[roomy][roomx][i]] then
				roomdata[roomy][roomx][i] = mt[mtCount][2][math.random(#mt[mtCount][2])]
			end
		end
	end
end
