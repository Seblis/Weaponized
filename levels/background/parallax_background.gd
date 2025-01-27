extends ParallaxBackground

# if changed remember to update the preload file location path
@export var background_texture = preload("res://levels/background/Acid_Side_BG.png")
@export var slide_speed = 20

@onready var sprite = $ParallaxLayer/Sprite2D

func _ready() -> void:
	sprite.texture = background_texture
	
func _physics_process(delta: float) -> void:
	sprite.region_rect.position += delta * Vector2(slide_speed,slide_speed)
	# pick correct numbers for Vector2 below
	if sprite.region_rect.position >= Vector2(128,768):
		sprite.region_rect.position = Vector2.ZERO
