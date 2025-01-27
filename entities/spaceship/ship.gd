class_name PlayerShip
extends CharacterBody2D

@export var max_health = 5
var _current_health

var max_speed = 600.0
#var vel = Vector2(0, 0)
var steering_factor = 3.0

func _ready():
	GameEngine.set_player(self)
	_current_health = max_health

func _process(delta: float):
	var direction = Vector2(0, 0)
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	if direction.length() > 1.0:
		direction = direction.normalized()

	var desired_velocity = max_speed * direction
	var steering = desired_velocity - velocity
	
	velocity += steering * steering_factor * delta
	position += velocity * delta

	var aim_direction = global_position.direction_to(get_global_mouse_position())
	if aim_direction.length() > 0.15:
		rotation = aim_direction.angle()
	
	move_and_slide()
	

func take_damage(damage_amount):
	_current_health = clampi(_current_health - damage_amount, 0, max_health)
	
	if not _current_health:
		# TODO loss condition, emit signal and handle it
		pass
