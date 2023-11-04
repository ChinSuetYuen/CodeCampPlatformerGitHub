extends Node2D

func _ready():
	Utils.loadGame()

func _on_quit_pressed():
	get_tree().quit() # Replace with function body.

func _on_start_pressed():
	if Game.playerHP <= 0:
		Game.playerHP = 10
		Game.Gold = 0
		Utils.saveGame()
	else:
		get_tree().change_scene_to_file("res://world.tscn") # Replace with function body.

