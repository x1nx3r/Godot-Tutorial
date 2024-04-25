extends Node
class_name navigator

var path : String = "res://main_scene.tscn"

func _init():
	pass

func _on_button_pressed():
	get_tree().change_scene_to_file("level_1.tscn")
