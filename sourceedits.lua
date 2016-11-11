sourceedits =
{
	["main2"] =
	{
		{
      -- Prevent tool selection when CTRL/CMD is held
			find = [[elseif not editingroomname and (editingroomtext == 0) and nodialog and state == 1 then]],
			replace = [[elseif not editingroomname and (editingroomtext == 0) and nodialog and state == 1 and not (love.keyboard.isDown("l" .. ctrl) or love.keyboard.isDown("r" .. ctrl)) then]],
			ignore_error = true,
			luapattern = false,
			allowmultiple = false,
		},
	},
}
