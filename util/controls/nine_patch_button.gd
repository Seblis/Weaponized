class_name NinePatchButton
extends Control

signal _on_nine_patch_button_pressed()

@export var texture_pressed: Texture2D
@export var texture_released: Texture2D
@export var texture_hovered: Texture2D
@export var button_text: RichTextLabel

@onready var nine_patch_rect: NinePatchRect = %NinePatchRect
@onready var rich_text_label: RichTextLabel = %RichTextLabel

func _process(delta: float):
	print(nine_patch_rect.texture.resource_name)

func _ready():
	nine_patch_rect.texture = texture_released
	nine_patch_rect.region_rect = Rect2(96,0,192,128)

func _on_button_pressed():
	nine_patch_rect.texture = texture_pressed
	_on_nine_patch_button_pressed.emit()
	print("pressed")


func _on_button_mouse_entered():
	nine_patch_rect.texture = texture_hovered
	rich_text_label.text = rich_text_label.text.replace("valign px=-12","valign px=-24")
	print(rich_text_label.text)
	print("mouse_entered")


func _on_button_mouse_exited():
	nine_patch_rect.texture = texture_released
	rich_text_label.text = rich_text_label.text.replace("valign px=-24","valign px=-12")
	print("mouse_exited")
