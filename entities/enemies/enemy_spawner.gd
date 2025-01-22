extends Node2D

@onready var timer = $Timer
@onready var spawn_point = $SpawnPoint

var enemy_scene = preload("res://entities/enemies/enemy_body.tscn")

func _ready() -> void:
	timer.connect("timeout", _on_timeout)
	
func _on_timeout() -> void:
	print("Spawning time")
	spawn_enemy()
	
func spawn_enemy() -> void:
	var enemy_instance = enemy_scene.instantiate()
	add_child(enemy_instance)
	enemy_instance.global_position = spawn_point.global_position
