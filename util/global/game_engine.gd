extends Node


const GROUP_PLAYER = "GROUP_PLAYER"
const GROUP_WEAPON = "GROUP_WEAPON"
const GROUP_ENEMY = "GROUP_ENEMY"
const GROUP_ENEMY_WEAPON = "GROUP_ENEMY_WEAPON"
const GROUP_PROJECTILE = "GROUP_PROJECTILE"
const GROUP_AGGRO_RANGE = "GROUP_AGGRO_RANGE"


var _player: PlayerShip = null
var _enemies_count = 0
var _score = 0

var _best_score = [0,0,0,0,0,0,0,0,0,0]

func set_player(player: PlayerShip):
	#print("Player set to ", player)
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
		
		
func reset(base_score: int = 0):
	_enemies_count = 0
	_score = base_score
	
func score_penalty(penalty: int):
	_score -= penalty
	
func save_score(level: int, time_bonus):
	_best_score[level] = max(_best_score[level], _score + time_bonus)
	# TODO: permanent score saving, maybe some json?
	
	
