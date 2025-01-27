extends Node2D

@onready var shooting_point = $ShootingPoint
@onready var shooting_point_2 = $ShootingPoint2
@onready var shooting_point_3 = $ShootingPoint3
@onready var shooting_point_4 = $ShootingPoint4

var base_bullet = preload("res://entities/enemies/common/base_bullet.tscn")

var _last_position: Vector2
var _motion: Vector2

func _physics_process(delta):
	_motion = (global_position - _last_position) / delta
	_last_position = global_position

func _on_weapon_cooldown_timeout():
	shoot_bullet(shooting_point)
	shoot_bullet(shooting_point_2)
	shoot_bullet(shooting_point_3)
	shoot_bullet(shooting_point_4)
	
	
func shoot_bullet(origin: Marker2D):
	var new_bullet = base_bullet.instantiate()
	var direction = global_position.direction_to(origin.global_position)
	new_bullet.rotation = direction.angle()
	new_bullet.global_position = origin.global_position
	new_bullet.set_momentum(_motion)
	
	get_tree().current_scene.add_child(new_bullet)
