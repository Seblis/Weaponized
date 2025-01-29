extends Node2D
@onready var enemy_manager: EnemyManager = %EnemyManager
@onready var pause_menu = $CanvasLayer/PauseMenu
var base_enemy = preload("res://entities/enemies/base_enemy/base_enemy.tscn")

##
#  [enemy_scene, path_id, enemies_amount, delay(s), spacing]
#  we can provide optional array with enemy parameters at the end
##

var waves = [
	[	
		#wave 1
		[base_enemy, 0, 15, 3, 0.03],
		[base_enemy, 1, 15, 3, 0.03],
		[base_enemy, 2, 10, 3, 0.06],
	],
	[	
		#wave 2
		[base_enemy, 0, 15, 3, 0.03],
		[base_enemy, 1, 15, 3, 0.03],
		[base_enemy, 2, 10, 3, 0.06],
	],
]

func _ready():
	enemy_manager.supply_waves(waves)
	pause_menu.hide()
	
	
