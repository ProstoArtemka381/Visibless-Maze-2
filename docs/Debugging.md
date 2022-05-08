# Modules

Example of module using:
```
function vm_init()
	Debug:Print("Start of program!")
end
```

## There are list of VM2 modules

### List of debug module functions
name and args | description
--- | ---
Print(string text) |  Print text to console
PrintLine(string text) | Print text to console with new line
ReadLine(string text) | Print(text) and return inputed text
ReadChar(string text) | Print(text) and return inputed char

### List of level module functions

name and args | description
--- | ---
GetMapPixel(int x, int y) | Return Pixel from coords x, y (return Map\[x\]\[y\])
SetMapPixel(Pixel p, int x, int y) | Set Pixel to coords x, y (Map\[x\]\[y\] = p)
SetMapPixel(Pixel p, Vector2i v) | Set Pixel to coords x, y (Map\[v.X\]\[v.Y\] = p)
FindPixels(Pixel p) | Return Pixel array which match with p
Close() | Close game

### List of level module params

name | description
--- | ---
string Name | Name of level
int Width | Width of level
int Height | Height of level
Pixel\[\]\[\] Map | Array of arrays of pixels :)

### List of player functions
name and args | description
--- | ---
Move(Vector2i vec) | Add vec to player position
GetPixel() | Return Pixel from player position

### List of player params
name | description
--- | ---
Vector2i Position | Position of player
Vector2i LastPosition | Position before player's move

### List of sounds functions
PlaySound(string path) | Play .wav file from path
CleanSounds() | Function, which close all devices