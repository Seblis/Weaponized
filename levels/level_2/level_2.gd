extends Node2D
@onready var enemy_manager: EnemyManager = %EnemyManager
@onready var pause_menu = $CanvasLayer/PauseMenu
var base_enemy = preload("res://entities/enemies/BaseEnemy.tscn")

##
#  [enemy_scene, path_id, enemies_amount, delay(s), spacing]
#  we can provide optional array with enemy parameters at the end
##

var waves = [
	[	
		#wave 1
		[base_enemy, 0, 3, 1, 0.07],
		[base_enemy, 1, 3, 1, 0.07],
		[base_enemy, 2, 4, 1, 0.07],
		[base_enemy, 3, 4, 1, 0.07],
	],
	[	
		#wave 2
		[base_enemy, 4, 3, 1, 0.07],
		[base_enemy, 5, 5, 1, 0.07],
		[base_enemy, 6, 3, 1, 0.07],
		[base_enemy, 7, 5, 1, 0.07],
	],
	[	
		#wave 3
		[base_enemy, 8, 5, 1, 0.07],
		[base_enemy, 9, 5, 1, 0.07],
		[base_enemy, 10, 5, 1, 0.07],
	],
]

func _ready():
	enemy_manager.supply_waves(waves)
	pause_menu.hide()
	
	
