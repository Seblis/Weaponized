extends Node2D

@onready var shooting_point = $ShootingPoint

@export var shooting_angle = 0.35

var base_bullet = preload("res://entities/enemies/common/base_bullet.tscn")
var _last_position: Vector2
var _motion: Vector2

func _physics_process(delta):
	_motion = (global_position - _last_position) / delta
	_last_position = global_position

func _on_weapon_cooldown_timeout():
	shoot()
	shoot(shooting_angle)
	shoot(-shooting_angle)
	
	
func shoot(angle = 0.0):
	var new_bullet = base_bullet.instantiate()
	var direction = global_position.direction_to(shooting_point.global_position)
	new_bullet.rotation = direction.angle()
	new_bullet.rotation += angle
	new_bullet.global_position = shooting_point.global_position
	new_bullet.set_momentum(_motion)
	
	get_tree().current_scene.add_child(new_bullet)
	
