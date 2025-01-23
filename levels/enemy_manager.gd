extends Node2D

@onready var enemy_paths = %EnemyPaths

var base_enemy = preload("res://entities/enemies/BaseEnemy.tscn")

func _ready():
	#TODO right now we are spawning
	enemy_paths.spawn_multiple_enemies(base_enemy, 0, 3, 1, 0.07)
