extends ParallaxBackground

@export var background_texture = preload("res://levels/background/cat_space.png")
@export var slide_speed = 20

@onready var sprite = $ParallaxLayer/Sprite2D

func _ready() -> void:
	sprite.texture = background_texture
	
func _physics_process(delta: float) -> void:
	sprite.region_rect.position += delta * Vector2(slide_speed,slide_speed)
	if sprite.region_rect.position >= Vector2(330,336):
		sprite.region_rect.position = Vector2.ZERO
