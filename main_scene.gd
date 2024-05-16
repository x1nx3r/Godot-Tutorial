extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	globals.currentStage=0
	$buttonHome.pressed.connect(SceneController.homeButton_pressed)
	$level2Button.pressed.connect(SceneController.level2_button_pressed)c
	$level1Button.pressed.connect(SceneController.nextStageButton_pressed)
	$level3Button.pressed.connect(SceneController.level3_button_pressed)
	$level4Button.pressed.connect(SceneController.level4_button_pressed)
	$level5Button.pressed.connect(SceneController.level5_button_pressed)
	$level6Button.pressed.connect(SceneController.level6_button_pressed)
	$level7Button.pressed.connect(SceneController.level7_button_pressed)
	$level8Button.pressed.connect(SceneController.level8_button_pressed)
	$level9Button.pressed.connect(SceneController.level9_button_pressed)
	$level10Button.pressed.connect(SceneController.level10_button_pressed)
	var key2 = get_node("Key2")
	var key3 = get_node("Key3")
	var key4 = get_node("Key4")
	var key5 = get_node("Key5")
	var key6 = get_node("Key6")
	var key7 = get_node("Key7")
	var key8 = get_node("Key8")
	var key9 = get_node("Key9")
	var key10 = get_node("Key10")

	# Iterate over the keys from 2 to 10
	for i in range(2, 11):
		# Construct the node name dynamically
		var node_name = "Key" + str(i)
		# Get the node using its name
		var key = get_node(node_name)
		# Construct the level passed variable name dynamically
		var level_passed_var_name = "level" + str(i) + "passed"
		# Get the value of the level passed variable
		var level_passed = globals[level_passed_var_name]
		# Check if the level passed variable is true
		if level_passed:
		# If true, set the node's visibility to false
			key.visible = false



