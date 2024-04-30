extends Navigator

# Called when the node enters the scene tree for the first time.
func _ready():
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

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
