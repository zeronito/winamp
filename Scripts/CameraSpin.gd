extends Node3D

var cameraRotation : bool = true

func _process(delta):
	if cameraRotation == true:
		rotation.y += 1.0*delta
	else:
		if Input.is_action_pressed("cameraLeft"):
			rotation.y -= 1.0*delta
		if Input.is_action_pressed("cameraRight"):
			rotation.y += 1.0*delta
	if Input.is_action_pressed("cameraUp"):
		rotation.x -= 1.0*delta
	if Input.is_action_pressed("cameraDown"):
		rotation.x += 1.0*delta
	if Input.is_action_just_pressed("camera"):
		cameraRotation = !cameraRotation
	if Input.is_action_just_pressed("reset"):
		rotation.y = 0
		rotation.x = 0
