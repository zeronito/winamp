extends Node2D

var honeysim2028 = preload("res://Scenes/honeysimulator.tscn").instantiate()
var highscorefps = preload("res://Scenes/highscorefps.tscn").instantiate()
var highscorecatexplotano = preload("res://Scenes/highscorecatexplotano.tscn").instantiate()
var loaded : bool = false

@export var honeysong3 : AudioStreamPlayer
@export var honeysongjpg : Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	honeysong3.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("esc"):
		print("lol I couldn't figure this one out actually")
	
	if loaded == true:
		honeysongjpg.visible = false
		honeysong3.stop()
		return
	elif Input.is_action_just_pressed("1"):
		loaded = true
		get_tree().root.add_child(honeysim2028)
	elif Input.is_action_just_pressed("2"):
		loaded = true
		Autoload.highscorefps = true
		get_tree().root.add_child(highscorefps)
	elif Input.is_action_just_pressed("3"):
		loaded = true
		Autoload.highscorecatexplotano = true
		get_tree().root.add_child(highscorecatexplotano)
