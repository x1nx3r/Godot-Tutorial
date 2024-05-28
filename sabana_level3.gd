extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	globals.isSavannaLvlPassed3=true
	if (globals.isSavanaEasyChosen == true):
		globals.isOnLevel3 = true
	else:
		globals.isOnLevel3 = false
	globals.currentStage = 9
	$choiceAbutton.pressed.connect(SceneController.correct_answer_pressed)
	$choiceBbutton.pressed.connect(SceneController.false_answer_pressed)
	$choiceCbutton.pressed.connect(SceneController.false_answer_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
