extends Node

var timer : int = 0
var honey = preload("res://Scenes/honey_the_cat.tscn")
var honey_instance = honey.instantiate()
var rng = RandomNumberGenerator.new()
var honey_count : int = 0
var timer_stop = 24
var honey_score : int = 0

func _physics_process(delta):
	if Input.is_action_just_pressed("hyperspeed"):
		honey_instance = honey.instantiate()
		add_child(honey_instance)
		honey_instance.position.y = 16
		honey_instance.position.x = rng.randf_range(-20, 20)
		honey_instance.position.z = rng.randf_range(-20, 20)
		honey_instance.rotation.x = rng.randf_range(-0.2, 0.2)
		honey_instance.rotation.z = rng.randf_range(-0.2, 0.2)
		honey_count += 1
	if Input.is_action_pressed("hyperspeed"):
		timer_stop = 6
	else:
		timer_stop = 24
	if timer >= timer_stop:
		honey_instance = honey.instantiate()
		add_child(honey_instance)
		honey_instance.position.y = 16
		honey_instance.position.x = rng.randf_range(-20, 20)
		honey_instance.position.z = rng.randf_range(-20, 20)
		honey_instance.rotation.x = rng.randf_range(-0.2, 0.2)
		honey_instance.rotation.z = rng.randf_range(-0.2, 0.2)
		honey_count += 1
		print("Printed cat at ", honey_instance.position, "...")
		timer = 0
	else:
		timer += 1
	
