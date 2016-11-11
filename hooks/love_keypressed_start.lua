if nodialog and editingroomtext == 0 and editingroomname == false and (state == 1) and (key == "r") and (love.keyboard.isDown("l" .. ctrl) or love.keyboard.isDown("r" .. ctrl)) then
  for i=1,1200 do
    roomdata[roomy][roomx][i] = math.random(0, 1198)
  end
end
