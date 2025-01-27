extends Node2D

@onready var enemy_manager: EnemyManager = %EnemyManager

var base_enemy = preload("res://entities/enemies/base_enemy/BaseEnemy.tscn")
var square_enemy = preload("res://entities/enemies/square/square_enemy.tscn")
var triangle_enemy = preload("res://entities/enemies/triangle/triangle_enemy.tscn")

##
#  [enemy_scene, path_id, enemies_amount, delay(s), spacing]
#  we can provide optional array with enemy parameters at the end
##

var waves = [
	[[triangle_enemy, 1, 3, 1, 0.07]],
	[[base_enemy, 0, 3, 1, 0.07]],
	[[base_enemy, 1, 3, 1, 0.07]],
	[[square_enemy, 0, 3, 1, 0.07],[triangle_enemy, 1, 3, 1, 0.07]]
	
]

func _ready():
	enemy_manager.supply_waves(waves)
