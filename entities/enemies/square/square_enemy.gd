class_name SquareEnemy
extends CharacterBody2D

@export var path_follow: PathFollow2D
@export var speed = 7
@export var final_progress_rate = 0.99
@export var max_hp = 10
@export_range(0.0, 360.0, 1.0) var rotation_speed = 1.0

@onready var weapon_cooldown = %WeaponCooldown

var _current_hp: int = -1
var _initial_movement_finished = false

func _ready():
	_current_hp = 10
	
func _physics_process(delta):
	rotation += rotation_speed * delta
	if not _initial_movement_finished and path_follow.progress_ratio < final_progress_rate:
		path_follow.progress += speed
	else:
		_initial_movement_finished = true
		
	# Here we can add additional movement after the wave moved to it's destination
	if _initial_movement_finished:
		pass


func set_path_follow(path: PathFollow2D, final_progress = 0.99):
	path_follow = path
	final_progress_rate = final_progress
	
func take_damage(damage_value: int):
	_current_hp = clampi(_current_hp - damage_value, 0, max_hp)
	
	if not _current_hp:
		destroy()
	
func destroy():
	hide()
	GameEngine.enemies_counter(-1)
	if path_follow != null:
		path_follow.call_deferred("queue_free")
	queue_free()
