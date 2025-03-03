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
			[rapidfire_enemy, 0, 3, 1, 0.07],
			[rapidfire_enemy, 1, 3, 1, 0.07],
			[rapidfire_enemy, 2, 3, 1, 0.07],
			[rapidfire_enemy, 3, 3, 1, 0.07],
		],
		[	
			#wave 2
			[rapidfire_enemy, 4, 4, 1, 0.07],
			[rapidfire_enemy, 5, 4, 1, 0.07],
			[rapidfire_enemy, 6, 4, 1, 0.07],
		],
		[	
			#wave 3
			[rapidfire_enemy, 7, 5, 1, 0.07],
			[rapidfire_enemy, 8, 5, 1, 0.07],
			[rapidfire_enemy, 9, 5, 1, 0.07],
		],
	]
	enemy_manager.supply_waves(waves)
