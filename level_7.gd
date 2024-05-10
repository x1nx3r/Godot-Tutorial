extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	SceneController.level7passed()
	globals.currentStage = 10
	$choiceAbutton.pressed.connect(SceneController.false_answer_pressed)
	$choiceBbutton.pressed.connect(SceneController.correct_answer_pressed)
	$choiceCbutton.pressed.connect(SceneController.false_answer_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
