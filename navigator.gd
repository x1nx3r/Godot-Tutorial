extends Node
class_name Navigator

func _init():
	pass

func _play_button_pressed():
	get_tree().change_scene_to_file("res://main_scene.tscn")

func _credit_button_pressed():
	get_tree().change_scene_to_file("res://credit_page.tscn")

func _on_level1Button_pressed():
	get_tree().change_scene_to_file("level_1.tscn")

func _on_homeButton_pressed():
	get_tree().change_scene_to_file("titleScene.tscn")

func _on_false_answer_pressed():
	get_tree().change_scene_to_file("jawaban_salah.tscn")

func _on_correct_answer_pressed():
	globals.currentStage += 1
	get_tree().change_scene_to_file("jawaban_benar.tscn")

func _on_nextStageButton_pressed():
	match globals.currentStage:
		0:
			get_tree().change_scene_to_file("res://petunjuk1_1.tscn")
		1:
			get_tree().change_scene_to_file("res://petunjuk1_2.tscn")
		2:
			get_tree().change_scene_to_file("level_1.tscn")
		3:
			get_tree().change_scene_to_file("level_2.tscn")
		4:
			get_tree().change_scene_to_file("level_3.tscn")
		5:
			get_tree().change_scene_to_file("res://petunjuk2.tscn")
		6:
			get_tree().change_scene_to_file("level_4.tscn")
		7:
			get_tree().change_scene_to_file("level_5.tscn")
		8:
			get_tree().change_scene_to_file("level_6.tscn")
		9:
			get_tree().change_scene_to_file("petunjuk3.tscn")
		10:
			get_tree().change_scene_to_file("level_7.tscn")
		11:
			get_tree().change_scene_to_file("level_8.tscn")
		12:
			get_tree().change_scene_to_file("level_9.tscn")
		13:
			get_tree().change_scene_to_file("level_10.tscn")
		14:
			get_tree().change_scene_to_file("res://savescore.tscn")

func progressionCheck(thing):
	thing.visible=false

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


