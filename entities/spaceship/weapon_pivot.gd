extends Node2D


@export var bullet_scene = preload("res://entities/spaceship/player_bullet.tscn")
@onready var _weapon_anchor: Marker2D = %WeaponAnchor
@onready var weapon_cooldown = %WeaponCooldown
@onready var sprite_fire: AnimatedSprite2D = %SpriteFire

enum FireState {JUST_PRESSED, PRESSED, RELEASED}

var fire_state = FireState.RELEASED
var on_cooldown = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("fire"):
		fire_state = FireState.PRESSED
		sprite_fire.play("default")
	elif event.is_action_released("fire"):
		fire_state = FireState.RELEASED
		sprite_fire.stop()

#ANCHOR:_process_definition
func _physics_process(_delta: float) -> void:
	if fire_state == FireState.PRESSED and not on_cooldown:
		shoot()
		weapon_cooldown.start()
	#var aim_direction := Vector2.ZERO
	#
	#aim_direction = global_position.direction_to(get_global_mouse_position())
	#if aim_direction.length() > 0.1:
		#rotation = aim_direction.angle()
#
	#z_index = 3
	#if aim_direction.y < 0.0:
		#z_index = 1
		
func shoot():
	# TODO actual shooting
	var bullet: Node = bullet_scene.instantiate()
	get_tree().current_scene.add_child(bullet)
	
	bullet.global_position = _weapon_anchor.global_position
	bullet.global_rotation = _weapon_anchor.global_rotation
	
	on_cooldown = true
	weapon_cooldown.start()
	
func cooldown_finished():
	on_cooldown = false
