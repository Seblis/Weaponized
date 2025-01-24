extends Node2D

@onready var enemy_paths = %EnemyPaths

const WAVES_AMOUNT = 3
var _current_wave = 0

var base_enemy = preload("res://entities/enemies/BaseEnemy.tscn")
var waves = [
	[[base_enemy, 0, 3, 1, 0.07],[base_enemy, 1, 3, 1, 0.07]],
	[[base_enemy, 0, 3, 1, 0.07]],
	[[base_enemy, 1, 3, 1, 0.07]],
	
]

func _ready():
	SignalManager.on_wave_defeated.connect(_on_wave_defeated)
	_spawn_next_wave()
	

func _on_wave_defeated():
	if _current_wave == WAVES_AMOUNT:
		# TODO victory screen
		pass
		
	_spawn_next_wave()

func _spawn_next_wave():
	for args in waves[_current_wave]:
		enemy_paths.callv("spawn_multiple_enemies", args)
