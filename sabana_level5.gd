extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	globals.isOnSavanna=false
	globals.isSavannaLvlPassed5=true
	globals.currentStage = 11
	$choiceAbutton.pressed.connect(SceneController.false_answer_pressed)
	$choiceBbutton.pressed.connect(SceneController.false_answer_pressed)
	$choiceCbutton.pressed.connect(SceneController.correct_last_answer_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
