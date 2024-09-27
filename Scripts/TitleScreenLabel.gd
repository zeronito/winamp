extends Label

@export var title_screen : Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if title_screen.loaded == true:
		visible = false
	pass
