class_name PlayerShip
extends CharacterBody2D

var max_speed = 600.0
#var vel = Vector2(0, 0)
var steering_factor = 3.0

func _on_ready():
	pass

func _process(delta: float):
	var direction = Vector2(0, 0)
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	if direction.length() > 1.0:
		direction = direction.normalized()

	var desired_velocity = max_speed * direction
	var steering = desired_velocity - velocity
	velocity += steering * steering_factor * delta
	position += velocity * delta

	if velocity.length() > 0.0:
		rotation = velocity.angle()
	
	move_and_slide()
	
