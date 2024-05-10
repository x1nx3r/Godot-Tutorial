extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	$playButton.pressed.connect(SceneController.play_button_pressed)
	globals.level2passed = false
	globals.level3passed = false
	globals.level4passed = false
	globals.level5passed = false
	globals.level6passed = false
	globals.level7passed = false
	globals.level8passed = false
	globals.level9passed = false
	globals.level10passed = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_text_update(): # Update the userInput variable whenever the text in the TextEdit node changes
	var uNameInput = get_node("uNameInput")
	var userInput : String = uNameInput.text
	globals.uName = userInput
	print("User input: ", userInput)


