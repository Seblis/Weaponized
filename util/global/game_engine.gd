extends Node


const GROUP_PLAYER = "GROUP_PLAYER"
const GROUP_WEAPON = "GROUP_WEAPON"
const GROUP_ENEMY = "GROUP_ENEMY"
const GROUP_ENEMY_WEAPON = "GROUP_ENEMY_WEAPON"
const GROUP_PROJECTILE = "GROUP_PROJECTILE"
const GROUP_AGGRO_RANGE = "GROUP_AGGRO_RANGE"


#var _player: PlayerCharacter
#
#func set_player(player: PlayerCharacter):
	#_player = player
#
#func get_player():
	#return _player
#
#func get_player_position():
	#if _player is PlayerCharacter:
		#return _player.global_position
	#else:
		#return null
