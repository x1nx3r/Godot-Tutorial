extends Control

func _ready():
  globals.currentStage = 0

func _on_button_play_pressed():
  get_tree().change_scene_to_file("main_scene.tscn")

func _on_button_credits_pressed():
  get_tree().change_scene_to_file("credit_page.tscn")
