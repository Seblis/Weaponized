extends ParallaxBackground

# if changed remember to update the preload file location path
@export var background_texture = preload("res://levels/background/Acid_BG.png")
@export var frame_texture: CompressedTexture2D
@export var slide_speed = 200

@onready var sprite = $ParallaxLayer/Sprite2D
@onready var left_frame = $Frames/LeftFrame
@onready var right_frame = $Frames/RightFrame
@onready var frames = $Frames
func _ready() -> void:
	sprite.texture = background_texture
	#left_frame.texture = frame_texture
	#right_frame.texture = frame_texture
	for x in frames.get_children():
		x.texture = frame_texture
func _physics_process(delta: float) -> void:
	sprite.region_rect.position.y -= delta * slide_speed
	# pick correct numbers for Vector2 below
	if sprite.region_rect.position.y <= -2160:
		sprite.region_rect.position = Vector2.ZERO
		
