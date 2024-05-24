extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_jalurMudah_presssed():
	SceneController.goto_scene("sabana_level2.tscn")

func _on_jalurSulit_presssed():
	SceneController.goto_scene("sabana_level4.tscn")
