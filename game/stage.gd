extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)

func _process(delta):
	if (Input.is_action_pressed("generic_key")):
		print("key detected")
		get_node("player").capture_strandee()

func win():
	get_tree().change_scene("res://win-screen/WinScreen.tscn")