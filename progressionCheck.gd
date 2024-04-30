extends Node
class_name ProgressionCheck
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(2, 11):
	# Construct the level passed variable name dynamically
		var level_passed_var_name = "level" + str(i) + "passed"
		# Get the value of the level passed variable
		var level_passed = globals[level_passed_var_name]
		# Check if the level passed variable is true
		if level_passed:
		# If true, set the globals score to +1
			globals.uScore += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
