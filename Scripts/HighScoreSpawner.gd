extends Node

@export var sugarcoat : Sprite3D
@export var boom : AudioStreamPlayer3D

var timer : int = 0
var honey = preload("res://Scenes/honey_the_cat.tscn")
var honey_instance = honey.instantiate()
var rng = RandomNumberGenerator.new()
var honey_count : int = 0
var timer_stop = 3

func _ready():
	#Autoload.highscore = true
	pass

func _physics_process(delta):
	if Engine.get_frames_per_second() <= 5 && honey_count > 30:
		Autoload.highscorefps_highscore = honey_count
		Autoload.highscorefps_lost = true
	if timer >= timer_stop && Autoload.highscorefps_lost == false:
		honey_instance = honey.instantiate()
		add_child(honey_instance)
		honey_instance.position.y = 16
		honey_instance.position.x = rng.randf_range(-20, 20)
		honey_instance.position.z = rng.randf_range(-20, 20)
		honey_instance.rotation.x = rng.randf_range(-0.2, 0.2)
		honey_instance.rotation.z = rng.randf_range(-0.2, 0.2)
		honey_count += 1
		sugarcoat.val = 1.0
		boom.play()
		print("Printed cat at ", honey_instance.position, "...")
		timer = 0
	else:
		timer += 1
	
