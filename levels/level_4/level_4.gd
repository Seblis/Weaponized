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
			[triangle_enemy, 0, 7, 2, 0.03],
			[rapidfire_enemy, 1, 10, 1, 0.03],
			[rapidfire_enemy, 2, 10, 1, 0.06],
		],
		[	
			#wave 2
			[rapidfire_enemy, 3, 12, 1, 0.03],
			[rapidfire_enemy, 4, 12, 1, 0.06],
			[triangle_enemy, 5, 8, 2, 0.03],
		],
	]
	enemy_manager.supply_waves(waves)
