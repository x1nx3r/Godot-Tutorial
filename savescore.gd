extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$homeButton.pressed.connect(SceneController.levelMenu_button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
