class_name StateMachine
extends Node

@export var starting_state: State
@export var aggro_component: AggroComponent = null

var current_state: State

func init(parent: CharacterBody2D) -> void:
	for child in get_children():
		child.parent = parent

	change_state(starting_state)

func change_state(new_state: State) -> void:
	if current_state:
		current_state.exit()

	current_state = new_state
	current_state.enter()
	
func process_physics(delta: float) -> void:
	var new_state = current_state.process_physics(delta)
	if new_state:
		change_state(new_state)

func process_input(event: InputEvent) -> void:
	var new_state = current_state.process_input(event)
	if new_state:
		change_state(new_state)

func process_frame(delta: float) -> void:
	var new_state = current_state.process_frame(delta)
	if new_state:
		change_state(new_state)
		
func entity_aggro():
	if aggro_component == null:
		return false
	else:
		return aggro_component.is_aggroed()
