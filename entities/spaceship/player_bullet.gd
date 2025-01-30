extends Area2D

@export_range(0, 1000.0, 10.0) var _speed = 700.0
@export_range(0, 5000.0, 100.0) var _max_range = 2000.0
@export var _damage = 7
@export var max_durability = 1

var _traveled_distance = 0.0
var _durability

func _ready():
	_durability = max_durability

func _physics_process(delta):
	var distance = delta * _speed
	var motion = Vector2.RIGHT.rotated(rotation) * distance
	
	position += motion
	
	_traveled_distance += distance
	
	if _traveled_distance > _max_range:
		destroy()
		
func destroy():
	hide()
	set_physics_process(false)
	set_deferred("monitoring", false)
	# TODO: later on we can destroy bullet after it's hit animation is finished
	queue_free()


func _on_body_entered(body: Node2D):
	if body.is_in_group("ENEMY"):
		body.take_damage(_damage)
		_durability -= 1
		if not _durability:
			destroy()
			
