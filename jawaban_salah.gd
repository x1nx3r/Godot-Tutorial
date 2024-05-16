extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	if globals.isOnSavanna:
		# Set "sabana-bg" to visible
		get_node("sabana-bg").visible = true
		# Set "tropis-bg" to invisible
		get_node("tropis-bg").visible = false
		# Set "default-bg" to invisible
		get_node("default-bg").visible = false
	elif globals.isOnTropical:
		# Set "sabana-bg" to invisible
		get_node("sabana-bg").visible = false
		# Set "tropis-bg" to visible
		get_node("tropis-bg").visible = true
		# Set "default-bg" to invisible
		get_node("default-bg").visible = false
	else:
		# Set "sabana-bg" to invisible
		get_node("sabana-bg").visible = false
		# Set "tropis-bg" to invisible
		get_node("tropis-bg").visible = false
		# Set "default-bg" to visible
		get_node("default-bg").visible = true

	$levelMenuButton.pressed.connect(SceneController.levelMenu_button_pressed)
	$nextButton.pressed.connect(SceneController.nextStageButton_pressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
