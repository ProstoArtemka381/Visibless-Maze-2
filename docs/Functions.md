# Functions

Example of using functions:

```lua
function vm_init()

	Debug:Print("It's init function!")

end
```

### List of functions
name and args | description
--- | ---
vm_init() | Called when level started
vm_update() | Call every tick while level is playing
vm_key_released(string key) | Called every time when player released key
vm_key_pressed(string key) | Called every tick while player pressed key
pl_moved() | Called after player Move() function