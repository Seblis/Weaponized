extends Node


const GROUP_PLAYER = "GROUP_PLAYER"
const GROUP_WEAPON = "GROUP_WEAPON"
const GROUP_ENEMY = "GROUP_ENEMY"
const GROUP_ENEMY_WEAPON = "GROUP_ENEMY_WEAPON"
const GROUP_PROJECTILE = "GROUP_PROJECTILE"
const GROUP_AGGRO_RANGE = "GROUP_AGGRO_RANGE"


var _player: PlayerShip = null
var _enemies_count = 0

func set_player(player: PlayerShip):
	print("Player set to ", player)
	_player = player

func get_player():
	return _player

func get_player_position():
	if _player != null:
		return _player.global_position
	else:
		return null

func enemies_counter(diff):
	_enemies_count += diff
	
	if diff and not _enemies_count:
		SignalManager.on_wave_defeated.emit()
	
	
