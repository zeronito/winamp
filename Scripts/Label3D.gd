extends Label3D


@export var spawner : Node

var textEnabled : bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("text"):
		textEnabled = !textEnabled
	if textEnabled == true:
		text = "Honeys Spawned: " + str(spawner.honey_count) + "\nFPS: " + str(Engine.get_frames_per_second()) + "\nHold Space for HYPERSPEED\nPress C to toggle camera rotation\nPress R to reset camera\nArrow keys for manual camera\nPress F to disable UI"
	else:
		text = ""
