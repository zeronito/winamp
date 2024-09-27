extends Label3D

@export var spawner : Node

var textEnabled : bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Autoload.highscorecatexplotano_lost == false:
		text = "Honeys Spawned: " + str(spawner.honey_count) + "\nScore: " + str(spawner.honey_score)
	else:
		text = "You lost!\nScore: " + str(spawner.honey_score)
