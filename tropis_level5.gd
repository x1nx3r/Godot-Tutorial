extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	globals.isOnTropical=false
	globals.isTropicalLvlPassed5=true
	globals.currentStage = 22
	$choiceAbutton.pressed.connect(SceneController.correct_last_answer_pressed)
	$choiceBbutton.pressed.connect(SceneController.false_answer_pressed)
	$choiceCbutton.pressed.connect(SceneController.false_answer_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
