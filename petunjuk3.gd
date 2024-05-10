extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	globals.currentStage = 10
	$homeButton.pressed.connect(SceneController.levelMenu_button_pressed)
	$nextButton.pressed.connect(SceneController.nextStageButton_pressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
