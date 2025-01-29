extends ParallaxBackground


@export var background_texture: CompressedTexture2D
@export var frame_texture: CompressedTexture2D
@export var slide_speed = 200

# Sprite is for background while frames is for left and right frame
@onready var sprite = $ParallaxLayer/Sprite2D
@onready var frames = $Frames2

func _ready() -> void:
	sprite.texture = background_texture
	
	# all parts of frames are updating textures
	for x in frames.get_children():
		x.texture = frame_texture
		
func _physics_process(delta: float) -> void:
	sprite.region_rect.position.y -= delta * slide_speed
	# pick correct numbers for Vector2 below to allow smooth scrolling depending on background size
	if sprite.region_rect.position.y <= -2160:
		sprite.region_rect.position = Vector2.ZERO
	
