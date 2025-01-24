class_name NinePatchButton
extends Control

signal _on_nine_patch_button_pressed()

@export var texture_pressed: Texture2D
@export var texture_released: Texture2D
@export var texture_hovered: Texture2D

@onready var nine_patch_rect: NinePatchRect = %NinePatchRect

func _on_button_pressed():
	nine_patch_rect.texture = texture_pressed
	_on_nine_patch_button_pressed.emit()


func _on_button_mouse_entered():
	nine_patch_rect.texture = texture_hovered


func _on_button_mouse_exited():
	nine_patch_rect.texture = texture_released
