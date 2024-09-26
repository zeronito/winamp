extends Label3D

@export var spawner : Node

var textEnabled : bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Autoload.highscorefps_lost == true:
		text = "You lost!\nYour final score was: " + str(spawner.honey_count)
	else:
		text = "Score: " + str(spawner.honey_count) + "\nFPS: " + str(Engine.get_frames_per_second())
