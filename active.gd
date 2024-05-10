extends Control
class_name

# Called when the node enters the scene tree for the first time.
func _ready():
	SceneController.goto_scene("titleScene.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
