if nodialog and editingroomtext == 0 and editingroomname == false and (state == 1) and (key == "r") and (love.keyboard.isDown("l" .. ctrl) or love.keyboard.isDown("r" .. ctrl)) then
  roomdata[roomy][roomx][3] = 40 --Debug function
end
