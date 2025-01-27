extends Node2D

@onready var shooting_point = $ShootingPoint
@onready var shooting_point_2 = $ShootingPoint2
@onready var shooting_point_3 = $ShootingPoint3
@onready var shooting_point_4 = $ShootingPoint4

var base_bullet = preload("res://entities/enemies/common/base_bullet.tscn")

func _on_weapon_cooldown_timeout():
	pass # Replace with function body.
