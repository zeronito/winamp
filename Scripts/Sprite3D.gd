extends Sprite3D


var val : float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	modulate.a = val
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_just_pressed("hyperspeed"):
		val = 1.0
	modulate.a = val
	if val > 0.1:
		val -= 0.1
