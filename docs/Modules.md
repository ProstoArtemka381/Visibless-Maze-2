# Modules

Example of module using:
```lua
function vm_init()
	Debug:Print("Start of program!")
end
```

## There are list of VM2 modules

### List of Debug module functions
name and args | description
--- | ---
Print(string text) |  Print text to console
PrintLine(string text) | Print text to console with new line
ReadLine(string text) | Print(text) and return inputed text
ReadChar(string text) | Print(text) and return inputed char

### List of Level module functions

name and args | description
--- | ---
GetMapPixel(int x, int y) | Return Pixel from coords x, y (return Map\[x\]\[y\])
SetMapPixel(Pixel p, int x, int y) | Set Pixel to coords x, y (Map\[x\]\[y\] = p)
SetMapPixel(Pixel p, Vector2i v) | Set Pixel to coords x, y (Map\[v.X\]\[v.Y\] = p)
FindPixels(Pixel p) | Return Pixel array which match with p
Close() | Close level

### List of Level module params

name | description
--- | ---
(**string**) Name | Name of level
(**int**) Width | Width of level
(**int**) Height | Height of level
(**Pixel\[\]\[\]**) Map | Array of arrays of pixels :)

### List of Player functions
name and args | description
--- | ---
Move(Vector2i vec) | Add vec to player position
GetPixel() | Return Pixel from player position

### List of Player params
name | description
--- | ---
(**Vector2i**) Position | Position of player
(**Vector2i**) LastPosition | Position before player's move

### List of Sounds functions
name and args | description
--- | ---
PlaySound(string path) | Play .wav file from path
CleanSounds() | Function, which close all devices

## Custom classes

### Pixel

Constructor(int red, int blue, int green)

Parameters

name | description
R | Red color of pixel
G | Green color of pixel
B | Blue color of pixel