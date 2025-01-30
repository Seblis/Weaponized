class_name ScoringComponent
extends Timer

@export var level: int = 1
@export var base_score: int = 100000
@export var time_mult: float = 100.0
@export var damage_penalty: int = 10

var _score := 0

func _ready():
	GameEngine.reset(base_score)
	GameEngine.set_damage_penalty(damage_penalty)
	GameEngine.set_game_timer(self)
	_score = base_score


func _on_timeout():
	# TODO: Display lose screen, game over
	pass

func _exit_tree():
	GameEngine.set_game_timer(null)
