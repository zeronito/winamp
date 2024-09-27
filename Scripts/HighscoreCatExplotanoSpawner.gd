extends Node

var timer : int = 0
var honey = preload("res://Scenes/honey_the_cat.tscn")
var honey_instance = honey.instantiate()
var rng = RandomNumberGenerator.new()
var honey_count : int = 0
var timer_stop : int = 60
var timer_accel : int = 0
var honey_score : int = 0

func _physics_process(delta):
	if honey_count >= 500:
		Autoload.highscorecatexplotano_lost = true
	if timer >= timer_stop && Autoload.highscorecatexplotano_lost == false:
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

	if timer_accel >= 120 && timer_stop > 1:
		timer_stop -= 1
		timer_accel = 0
	else:
		timer_accel += 1
