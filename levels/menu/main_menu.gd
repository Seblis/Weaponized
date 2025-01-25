extends Node2D


func _ready():
	pass



func _on_continue_assignment__on_nine_patch_button_pressed():
	get_tree().change_scene_to_file("res://levels/mock_level.tscn")
