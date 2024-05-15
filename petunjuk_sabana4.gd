extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	globals.currentStage = 6
	$nextButton.pressed.connect(SceneController.nextStageButton_pressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
