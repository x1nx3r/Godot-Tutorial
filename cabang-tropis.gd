extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_jalurMudah_presssed():
	SceneController.goto_scene("tropis_level2.tscn")

func _on_jalurSulit_presssed():
	SceneController.goto_scene("tropis_level4.tscn")
