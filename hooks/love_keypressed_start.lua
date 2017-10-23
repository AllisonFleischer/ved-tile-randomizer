if nodialog and editingroomtext == 0 and editingroomname == false and state == 1 and (love.keyboard.isDown("r")) and (love.keyboard.isDown("l" .. ctrl) or love.keyboard.isDown("r" .. ctrl)) then
	
	--Turn on Manual Mode (since randomization will naturally mess up tilesets)
	levelmetadata[(roomy)*20 + (roomx+1)].auto2mode = 0
	levelmetadata[(roomy)*20 + (roomx+1)].directmode = 1

	--Create the matrix
	mt = {}
	for i = 1, 2 do
		mt[i] = {}
		for j = 1, 2 do
			mt[i][j] = 0
		end
	end

	--[[
	mt: Array of "bundles"
	mt[x]: Bundle of tile replacements
	mt[x][1]: Set of tile numbers to replace
	mt[x][2]: Normal array of tile numbers to replace with
	]]

	-- Here's the biggest hardcoded nonsense to change for 1.0
	mt[1][1] = Set {6,7,53,54,55,56,57,58,59,60,61,62,65,66,67,68,69,70,71,72,73,74}
	mt[1][2] = {6,7,53,54,55,56,57,58,59,60,61,62,65,66,67,68,69,70,71,72,73,74}
	mt[2][1] = Set {880,881,882,883,884,920,921,922,923,924,960,961,962}
	mt[2][2] = {880,881,882,883,884,920,921,922,923,924,960,961,962}

	--Finally, randomize the tiles!
	for mtCount = 1,#mt do
		for i=1,1200 do
			if mt[mtCount][1][roomdata[roomy][roomx][i]] then
				roomdata[roomy][roomx][i] = mt[mtCount][2][math.random(#mt[mtCount][2])]
			end
		end
	end
end
