class_name BaseBullet
extends Area2D

@export var speed = 100
@export var damage = 10
@export var max_range = 1000.0

var _traveled_distance = 0.0
var _momentum: Vector2 = Vector2.ZERO

func _physics_process(delta):
	var distance = delta * speed
	var motion = Vector2.RIGHT.rotated(rotation) * distance
	
	position += motion + _momentum * delta
	_traveled_distance += distance
	
	if _traveled_distance > max_range:
		destroy()


func destroy():
	# TODO play a hit animation and connect it's finish signal to the queue free
	queue_free()
	
	
func set_momentum(momentum: Vector2):
	_momentum = momentum

func _on_body_entered(body: Node2D):
	if body is PlayerShip:
		body.take_damage(damage)
		destroy()
