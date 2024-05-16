extends Node

var current_scene = null

func _ready():
	# Load the active scene
	var active_scene_scene = ResourceLoader.load("res://active_scene.tscn")

	# Ensure the scene was loaded successfully
	if active_scene_scene != null:
		# Instance the active scene
		active_scene = active_scene_scene.instance()

		# Add the active scene as a child of root
		get_tree().root.add_child(active_scene)
	else:
		print("Error loading active_scene.tscn")

func goto_scene(path: String):
	# Defer the loading of the new scene
	call_deferred("_deferred_goto_scene", path)

func _deferred_goto_scene(path: String):
	# Free the current scene if it exists
	if active_scene != null:
		active_scene.free()

	# Load the new scene
	var new_scene = ResourceLoader.load(path)
	
	# Check if the new scene is valid
	if new_scene != null:
		# Instance the new scene
		active_scene = new_scene.instance()
		
		# Add the new scene as a child of the active scene
		get_tree().root.add_child(active_scene)
		
		# Optionally, to make it compatible with the SceneTree.change_scene_to_file() API.
		get_tree().current_scene = active_scene
	else:
		print("Error loading scene:", path)

# Here starts the temp
#func _ready():
	# goto_scene("res://titleScene.tscn")
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)
	# Get the main viewport
	var viewport = get_viewport()

# Now you can access properties and methods of the viewport
# For example, you can access the size of the viewport
	var viewport_size = viewport.size
	print(viewport)
	print(viewport_size)


func goto_scene(path):
	# This function will usually be called from a signal callback,
	# or some other function in the current scene.
	# Deleting the current scene at this point is
	# a bad idea, because it may still be executing code.
	# This will result in a crash or unexpected behavior.

	# The solution is to defer the load to a later time, when
	# we can be sure that no code from the current scene is running:
	call_deferred("_deferred_goto_scene", path)
	print(current_scene)

func _deferred_goto_scene(path):
	# It is now safe to remove the current scene.
	current_scene.free()

	# Load the new scene.
	var s = ResourceLoader.load(path)

	# Instance the new scene.
	current_scene = s.instantiate()

	# Add it to the active scene, as child of root.
	get_tree().root.add_child(current_scene)

	# Optionally, to make it compatible with the SceneTree.change_scene_to_file() API.
	get_tree().current_scene = current_scene
	
	func nextStageButton_pressed():
	match globals.currentStage:
		0:
			goto_scene("res://petunjuk1_1.tscn")
		1:
			goto_scene("res://petunjuk1_2.tscn")
		2:
			goto_scene("level_1.tscn")
		3:
			goto_scene("level_2.tscn")
		4:
			goto_scene("level_3.tscn")
		5:
			goto_scene("res://petunjuk2.tscn")
		6:
			goto_scene("level_4.tscn")
		7:
			goto_scene("level_5.tscn")
		8:
			goto_scene("level_6.tscn")
		9:
			goto_scene("petunjuk3.tscn")
		10:
			goto_scene("level_7.tscn")
		11:
			goto_scene("level_8.tscn")
		12:
			goto_scene("level_9.tscn")
		13:
			goto_scene("level_10.tscn")
		14:
			goto_scene("res://savescore.tscn")
