extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_homeButton_pressed():
	get_tree().change_scene_to_file("titleScene.tscn")

func _on_level1Button_pressed():
	get_tree().change_scene_to_file("level_1.tscn")
