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
			[rapidfire_enemy, 0, 6, 3, 0.03],
			[rapidfire_enemy, 1, 6, 3, 0.03],
			[rapidfire_enemy, 2, 6, 3, 0.06],
			[rapidfire_enemy, 3, 6, 3, 0.06],
			[rapidfire_enemy, 4, 6, 3, 0.06],
		],
		[	
			#wave 2
			[rapidfire_enemy, 0, 5, 2, 0.03],
			[rapidfire_enemy, 1, 5, 2, 0.03],
			[rapidfire_enemy, 2, 5, 2, 0.06],
			[rapidfire_enemy, 3, 5, 2, 0.06],
			[rapidfire_enemy, 4, 5, 2, 0.03],
		],
		[	
			#wave 1
			[rapidfire_enemy, 0, 4, 1, 0.03],
			[rapidfire_enemy, 1, 4, 1, 0.03],
			[rapidfire_enemy, 2, 4, 1, 0.03],
			[rapidfire_enemy, 3, 4, 1, 0.03],
			[rapidfire_enemy, 4, 4, 1, 0.06],
		],
	]
	enemy_manager.supply_waves(waves)
	
	
