class_name NinePatchButton
extends Control

signal _on_nine_patch_button_pressed()

@export var texture_pressed: Texture2D
@export var texture_released: Texture2D
@export var texture_hovered: Texture2D
@export var button_rich_label: RichTextLabel
@export var set_valign: bool
@export var valign_base: int
@export var valign_pressed: int

@onready var nine_patch_rect: NinePatchRect = %NinePatchRect

func _ready():
	nine_patch_rect.texture = texture_released
	nine_patch_rect.region_rect = Rect2(96,0,192,128)

func _on_button_pressed():
	nine_patch_rect.texture = texture_pressed
	_on_nine_patch_button_pressed.emit()

func _on_button_mouse_entered():
	nine_patch_rect.texture = texture_hovered
	if(set_valign):
		button_rich_label.text = button_rich_label.text.replace("valign px=%d" % valign_base,"valign px=%d" % valign_pressed)

func _on_button_mouse_exited():
	nine_patch_rect.texture = texture_released
	if(set_valign):
		button_rich_label.text = button_rich_label.text.replace("valign px=%d" % valign_pressed, "valign px=%d" % valign_base)
