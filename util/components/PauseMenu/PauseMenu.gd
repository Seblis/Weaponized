extends Control
#remeber to place me at canvas layer for me to work ~PauseMenu

func resume():
	get_tree().paused = false
	hide()

func pause():
	get_tree().paused = true
	show()

func on_manual_pause():
	if Input.is_action_just_pressed("pause") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("pause") and get_tree().paused:
		resume()

func _on_back_to_menu():
	resume()
	get_tree().change_scene_to_file("res://levels/menu/main_menu.tscn")

func _on_continue_assignment():
	resume()

func _process(delta: float):
	on_manual_pause()
