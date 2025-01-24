extends Node2D

@onready var enemy_manager: EnemyManager = %EnemyManager

var base_enemy = preload("res://entities/enemies/BaseEnemy.tscn")

##
#  [enemy_scene, path_id, enemies_amount, delay(s), spacing]
#  we can provide optional array with enemy parameters at the end
##

var waves = [
	[[base_enemy, 0, 3, 1, 0.07],[base_enemy, 1, 3, 1, 0.07]],
	[[base_enemy, 0, 3, 1, 0.07]],
	[[base_enemy, 1, 3, 1, 0.07]],
	
]

func _ready():
	enemy_manager.supply_waves(waves)
