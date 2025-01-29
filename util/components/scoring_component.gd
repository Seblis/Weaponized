class_name ScoringComponent
extends Timer

@export var level: int = 1
@export var base_score: int = 100000
@export var time_mult: float = 100.0

var _score := 0

func _ready():
	GameEngine.reset(base_score)
	_score = base_score


func _on_timeout():
	# TODO: Display lose screen
	pass
