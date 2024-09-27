extends RigidBody3D

@export var catexplotano : AnimatedSprite3D
@export var catexplotano_sound : AudioStreamPlayer3D
@export var gato : Node3D
var explotanowait : int = 0
var entered : bool = false
var rng = RandomNumberGenerator.new()
var explotanod : bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	
	input_ray_pickable = true
	catexplotano.visible = false
	explotanowait = rng.randi_range(1, 900)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("explode") && entered == true && Autoload.highscorefps == false:
		print("cat explotano")
		explotanod = true
		catexplotano.visible = true
		catexplotano.play()
		if !catexplotano_sound.playing:
			catexplotano_sound.play()
			get_node("/root/HoneySim2028/Spawner").honey_count -= 1
			if Autoload.highscorecatexplotano == true:
				get_node("/root/HoneySim2028/Spawner").honey_score += 1

func _physics_process(delta):
	if explotanod:
		for i in gato.get_children():
			i.transparency += 0.05
	if Autoload.highscorefps_lost == true || Autoload.highscorecatexplotano_lost == true:
		if explotanowait <= 0:
			print("cat explotano")
			explotanod = true
			catexplotano.visible = true
			catexplotano.play()
			if !catexplotano_sound.playing:
				catexplotano_sound.play()
		else:
			explotanowait -= 1
	
func _mouse_enter():
	entered = true

func _mouse_exit():
	entered = false


func _on_audio_stream_player_3d_finished():
	queue_free() # Replace with function body.
