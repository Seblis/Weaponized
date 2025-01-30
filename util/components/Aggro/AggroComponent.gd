class_name AggroComponent
extends Area2D

var _aggro_state: bool = false
# Called when the node enters the scene tree for the first time.
func is_aggroed():
	return _aggro_state

func _on_body_entered(body):
	if body.is_in_group(GameEngine.GROUP_PLAYER):
		_aggro_state = true


func _on_body_exited(body):
	if body.is_in_group(GameEngine.GROUP_PLAYER):
		_aggro_state = false
