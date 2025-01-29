extends Node2D

@onready var shooting_point = $ShootingPoint
@onready var reload = %Reload
@onready var weapon_cooldown = %WeaponCooldown

@export var shooting_angle = 0.35
@export var magazine_size = 10

var _magazine_state = 0

var base_bullet = preload("res://entities/enemies/common/base_bullet.tscn")
var _last_position: Vector2
var _motion: Vector2

func _ready():
	_magazine_state = magazine_size

func _physics_process(delta):
	_motion = (global_position - _last_position) / delta
	_last_position = global_position

func _on_weapon_cooldown_timeout():
	shoot()
	
func shoot(angle = 0.0):
	var new_bullet = base_bullet.instantiate()
	var direction = global_position.direction_to(shooting_point.global_position)
	new_bullet.rotation = direction.angle()
	new_bullet.rotation += angle
	new_bullet.global_position = shooting_point.global_position
	new_bullet.set_momentum(_motion)
	
	get_tree().current_scene.add_child(new_bullet)
	
	_magazine_state -= 1
	if not _magazine_state:
		weapon_cooldown.stop()
		reload.start()

func _on_reload_timeout():
	_magazine_state = magazine_size
	shoot()
	weapon_cooldown.start()
