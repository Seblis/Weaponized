extends Node2D

@onready var enemy_manager: EnemyManager = %EnemyManager

var base_enemy = preload("res://entities/enemies/base_enemy/base_enemy.tscn")
var square_enemy = preload("res://entities/enemies/square/square_enemy.tscn")
var triangle_enemy = preload("res://entities/enemies/triangle/triangle_enemy.tscn")
var rapidfire_enemy = preload("res://entities/enemies/rapidfire/rapidfire_enemy.tscn")

##
#  [enemy_scene, path_id, enemies_amount, delay(s), spacing]
#  we can provide optional array with enemy parameters at the end
##



func _ready():
	var waves = [
		[	
			#wave 1
			[rapidfire_enemy, 0, 20, 0.6, 0.01],
			[triangle_enemy, 0, 25, 0.6, 0.01],
			[triangle_enemy, 0, 25, 0.6, 0.01],
		],
		[	
			#wave 2
			[triangle_enemy, 1, 25, 0.5, 0.01],
			[triangle_enemy, 1, 25, 0.5, 0.01],
			[triangle_enemy, 1, 25, 0.5, 0.01],
			[triangle_enemy, 1, 25, 0.5, 0.01],
		],
		[	
			#wave 3
			[rapidfire_enemy, 2, 20, 0.4, 0.01],
			[triangle_enemy, 2, 25, 0.4, 0.01],
			[triangle_enemy, 2, 25, 0.4, 0.01],
			[rapidfire_enemy, 2, 20, 0.4, 0.01],
			[triangle_enemy, 2, 25, 0.4, 0.01],
			[triangle_enemy, 2, 25, 0.4, 0.01],
		],
	]
	enemy_manager.supply_waves(waves)
