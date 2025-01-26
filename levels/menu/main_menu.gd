extends Node2D


func _ready():
	pass

func _on_continue_assignment():
	get_tree().change_scene_to_file("res://levels/level_1/level_1.tscn")


func _on_intel_database():
	get_tree().change_scene_to_file("res://levels/menu/lore_screen.tscn")

func _on_assignment_selection():
	get_tree().change_scene_to_file("res://levels/menu/level_select.tscn")

func _on_exit_interface():
	get_tree().quit()
