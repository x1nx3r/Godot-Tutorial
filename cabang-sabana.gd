extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	globals.currentStage = 7


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_jalurMudah_presssed():
	SceneController.goto_scene("sabana_level2.tscn")
	globals.isSavanaEasyChosen = true

func _on_jalurSulit_presssed():
	SceneController.goto_scene("sabana_level4.tscn")
	globals.isSavanaHardChosen = true
