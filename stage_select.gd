extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$savannaButton.pressed.connect(SceneController.savanna_button_pressed)
	$tropisButton.pressed.connect(SceneController.tropis_button_pressed)
	$buttonHome.pressed.connect(SceneController.homeButton_pressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
