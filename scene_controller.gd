extends Node
var current_scene = null

func _ready():
	goto_scene("res://titleScene.tscn")
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

func enter_button_pressed():
	goto_scene("userinput.tscn")

func play_button_pressed():
	goto_scene("stage_select.tscn")

func credit_button_pressed():
	goto_scene("res://credit_page.tscn")

func levelMenu_button_pressed():
	if globals.isOnSavanna:
		goto_scene("sabana_select.tscn")
	elif globals.isOnTropical:
		goto_scene("tropis_select.tscn")
	else :
		goto_scene("stage_select.tscn")

func savanna_button_pressed():
	goto_scene("sabana_select.tscn")

func tropis_button_pressed():
	goto_scene("tropis_select.tscn")

func level1Button_pressed():
	goto_scene("level_1.tscn")

func homeButton_pressed():
	goto_scene("titleScene.tscn")

func false_answer_pressed():
	goto_scene("jawaban_salah.tscn")

func correct_answer_pressed():
	if (globals.isOnLevel3 == true):
		globals.currentStage += 2
	else :
		globals.currentStage += 1
	goto_scene("jawaban_benar.tscn")

func correct_last_answer_pressed():
	goto_scene("savescore.tscn")

func nextStageButton_pressed():
	print(globals.currentStage)
	match globals.currentStage:
		0:
			goto_scene("stage_select.tscn")
		1:
			goto_scene("sabana_select.tscn")
		2:
			goto_scene("petunjuk_sabana.tscn")
		3:
			goto_scene("petunjuk_sabana2.tscn")
		4:
			goto_scene("petunjuk_sabana3.tscn")
		5:
			goto_scene("petunjuk_sabana4.tscn")
		6:
			goto_scene("sabana_level1.tscn")
		7:
			goto_scene("cabang-sabana.tscn")
		8:
			goto_scene("sabana_level2.tscn")
		9:
			goto_scene("sabana_level3.tscn")
		10:
			goto_scene("sabana_level4.tscn")
		11:
			goto_scene("sabana_level5.tscn")
		12:
			goto_scene("tropis_select.tscn")
		13:
			goto_scene("petunjuk_tropis.tscn")
		14:
			goto_scene("petunjuk_tropis2.tscn")
		15:
			goto_scene("petunjuk_tropis3.tscn")
		16:
			goto_scene("petunjuk_tropis4.tscn")
		17:
			goto_scene("tropis_level1.tscn")
		18:
			goto_scene("cabang-tropis.tscn")
		19:
			goto_scene("tropis_level2.tscn")
		20:
			goto_scene("tropis_level3.tscn")
		21:
			goto_scene("tropis_level4.tscn")
		22:
			goto_scene("tropis_level5.tscn")
		23:
			goto_scene("savescore.tscn")

func progressionCheck(thing):
	thing.visible=false

func level2Savanna_button_pressed():
	if globals.isSavannaLvlPassed2 == true :
		goto_scene("res://sabana_level2.tscn")

func level3Savanna_button_pressed():
	if globals.isSavannaLvlPassed3 == true:
		goto_scene("res://sabana_level3.tscn")

func level4Savanna_button_pressed():
	if globals.isSavannaLvlPassed4 == true:
		goto_scene("res://sabana_level4.tscn")

func level5Savanna_button_pressed():
	if globals.isSavannaLvlPassed5 == true:
		goto_scene("res://sabana_level5.tscn")

func level2Tropical_button_pressed():
	if globals.isTropicalLvlPassed2 == true :
		goto_scene("res://tropis_level2.tscn")

func level3Tropical_button_pressed():
	if globals.isTropicalLvlPassed3 == true:
		goto_scene("res://tropis_level3.tscn")

func level4Tropical_button_pressed():
	if globals.isTropicalLvlPassed4 == true:
		goto_scene("res://tropis_level4.tscn")

func level5Tropical_button_pressed():
	if globals.isTropicalLvlPassed5 == true:
		goto_scene("res://tropis_level5.tscn")

func level3_button_pressed():
	if globals.level3passed == true :
		goto_scene("res://level_3.tscn")

func level4_button_pressed():
	if globals.level4passed == true :
		goto_scene("res://level_4.tscn")

func level5_button_pressed():
	if globals.level5passed == true :
		goto_scene("res://level_5.tscn")

func level6_button_pressed():
	if globals.level6passed == true :
		goto_scene("res://level_6.tscn")

func level7_button_pressed():
	if globals.level7passed == true :
		goto_scene("res://level_7.tscn")

func level8_button_pressed():
	if globals.level8passed == true :
		goto_scene("res://level_8.tscn")

func level9_button_pressed():
	if globals.level9passed == true :
		goto_scene("res://level_9.tscn")

func level10_button_pressed():
	if globals.level10passed == true :
		goto_scene("res://level_10.tscn")


func level2passed():
	globals.level2passed=true
func level3passed():
	globals.level3passed=true
func level4passed():
	globals.level4passed=true
func level5passed():
	globals.level5passed=true
func level6passed():
	globals.level6passed=true
func level7passed():
	globals.level7passed=true
func level8passed():
	globals.level8passed=true
func level9passed():
	globals.level9passed=true
func level10passed():
	globals.level10passed=true
