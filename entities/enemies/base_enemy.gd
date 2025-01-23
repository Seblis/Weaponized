class_name BaseEnemy
extends CharacterBody2D

@export var path_follow: PathFollow2D
@export var speed = 7
@export var final_progress_rate = 0.99

func _ready():
	pass
	
func _physics_process(delta):
	if path_follow.progress_ratio < final_progress_rate:
		path_follow.progress += speed


func set_path_follow(path: PathFollow2D, final_progress):
	path_follow = path
	final_progress_rate = final_progress
