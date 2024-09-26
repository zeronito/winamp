extends MeshInstance3D

var material = StandardMaterial3D.new()



# Called when the node enters the scene tree for the first time.
func _ready():
	material.albedo_color = Color(255, 255, 255)
	set_surface_override_material(0, material)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
