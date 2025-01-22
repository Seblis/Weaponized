extends Node2D

@export var enemy_speed = 300

func _physics_process(delta: float) -> void:
	global_position.x -= enemy_speed * delta
	
