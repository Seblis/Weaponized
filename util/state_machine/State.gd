class_name State
extends Node

@export var animation_name: String
@export var move_speed: float = 400

var parent: CharacterBody2D

func enter() -> void:
	if animation_name:
		parent.sprite.play(animation_name)

func exit() -> void:
	pass

## The functions below return a new state if a change of state is needed
func process_input(event: InputEvent) -> State:
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
