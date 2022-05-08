-- by Poet Luchnik

Tile = {
    EMPTY  = Pixel(255,255,255),
    PLAYER = Pixel(255, 0, 0),
    EXIT   = Pixel(255,255,0),
    WALL   = Pixel(0,0,0)
}

function the_end(ending) 
    Sounds:CleanSounds()
    Window:Close()
    Debug:PrintLine(ending)
end

function vm_init()
    Player.Position = Level:FindPixels(Tile.PLAYER)[0]
    Level:SetMapPixel(Tile.EMPTY, Player.Position.X, Player.Position.Y)
end

function pl_moved()
    pix = Level:GetMapPixel(Player.Position.X, Player.Position.Y)
    if pix == Tile.WALL then
        Player.Position = Player.LastPosition
        Sounds:PlaySound("wall.wav")
    elseif pix == Tile.EXIT then
        the_end("You Win")
    else
        Sounds:PlaySound("steps.wav")
    end
end

KeyVec = {
    W = Vector2i(0, -1),
    S = Vector2i(0, 1),
    A = Vector2i(-1, 0),
    D = Vector2i(1, 0)
}

function vm_key_released(key)
    if key == "Escape" then
        the_end("You Give Up")
    elseif KeyVec[key] then
        Player:Move(KeyVec[key])
    end
end