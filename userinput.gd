extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	globals.currentStage = 0
	$playButton.pressed.connect(SceneController.play_button_pressed)
	globals.isSavannaPassed = false
	globals.isTropicalPassed = false
	globals.isTropicalLvlPassed1 = false
	globals.isTropicalLvlPassed2 = false
	globals.isTropicalLvlPassed3 = false
	globals.isTropicalLvlPassed4 = false
	globals.isTropicalLvlPassed5 = false
	globals.isSavannaLvlPassed1 = false
	globals.isSavannaLvlPassed2 = false
	globals.isSavannaLvlPassed3 = false
	globals.isSavannaLvlPassed4 = false
	globals.isSavannaLvlPassed5 = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_text_update(): # Update the userInput variable whenever the text in the TextEdit node changes
	var uNameInput = get_node("uNameInput")
	var userInput : String = uNameInput.text
	globals.uName = userInput
	print("User input: ", userInput)
