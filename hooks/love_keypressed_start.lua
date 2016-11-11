if nodialog and editingroomtext == 0 and editingroomname == false and (state == 1) and (key == "r") and (love.keyboard.isDown("l" .. ctrl) or love.keyboard.isDown("r" .. ctrl)) then
	starttiles = Set {6,7,53,54,55,56,57,58,59,60,61,62,65,66,67,68,69,70,71,72,73,74}
	endtiles = {6,7,53,54,55,56,57,58,59,60,61,62,65,66,67,68,69,70,71,72,73,74}
	for i=1,1200 do
		if starttiles[roomdata[roomy][roomx][i]] then
			roomdata[roomy][roomx][i] = endtiles[math.random(#endtiles)]
		end
	end
end
