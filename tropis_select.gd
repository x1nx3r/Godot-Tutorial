extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	globals.isOnTropical=true
	globals.currentStage=13
	$buttonHome.pressed.connect(SceneController.homeButton_pressed)
	$level1Button.pressed.connect(SceneController.nextStageButton_pressed)
	$level2Button.pressed.connect(SceneController.level2Tropical_button_pressed)
	$level3Button.pressed.connect(SceneController.level3Tropical_button_pressed)
	$level4Button.pressed.connect(SceneController.level4Tropical_button_pressed)
	$level4Button.pressed.connect(SceneController.level4Tropical_button_pressed)
	var key2 = get_node("Key2")
	var key3 = get_node("Key3")
	var key4 = get_node("Key4")
	var key5 = get_node("Key5")

	# Iterate over the keys from 1 to 5
	for i in range(2, 6):
		# Construct the node name dynamically
		var node_name = "Key" + str(i)
		# Get the node using its name
		var key = get_node(node_name)
		# Construct the level passed variable name dynamically
		var level_passed_var_name = "isTropicalLvlPassed" + str(i)
		# Get the value of the level passed variable
		var level_passed = globals[level_passed_var_name]
		# Check if the level passed variable is true
		if level_passed:
			# If true, set the node's visibility to false
			key.visible = false

# Iterate over the levels from 1 to 5
	for i in range(1, 6):
		# Construct the level passed variable name dynamically
		var level_passed_var_name = "isTropicalLvlPassed" + str(i)
		# Get the value of the level passed variable
		var level_passed = globals[level_passed_var_name]
		# Print the value of the level passed variable
		print(level_passed_var_name + ":", level_passed)



