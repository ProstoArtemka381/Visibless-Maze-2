function vm_init()
	
	pixs = Level:FindPixels(Pixel(255, 0, 0))
	Player.Position = pixs[0]
	
	Level:SetMapPixel(Pixel(255,255,255), pixs[0].X, pixs[0].Y)
end

function pl_moved()

	pos = Player.Position
	pix = Level:GetMapPixel(pos.X, pos.Y)
	
	if pix ~= Pixel(255,255,255) then
		Player.Position = Player.LastPosition
		Sounds:PlaySound("wall.wav")
	
	elseif pix == Pixel(255,255,0) then
		Sounds:CleanSounds()
		Level:Close()
		Debug:PrintLine("Finished!")
	else
		Sounds:PlaySound("steps.wav")
	end
end

function move(key)

	vec = Vector2i(0,0)
	if key == "W" then
		vec = Vector2i(0, -1)
	elseif key == "S" then
		vec = Vector2i(0, 1)
	elseif key == "A" then
		vec = Vector2i(-1, 0)
	elseif key == "D" then
		vec = Vector2i(1, 0)
	else
		return
	end
	
	Player:Move(vec)
end

function vm_key_released(key)
	
	Debug:PrintLine(key)
	
	if key == "Escape" then
		Sounds:CleanSounds()
		Level:Close()
	else
		move(key)
	end
end