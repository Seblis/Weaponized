class_name EnemyPaths
extends Node2D

func spawn_enemy(enemy, path_id = 0, stop_point = 0, enemy_params = null):
	var path: Path2D = get_child(path_id)
	var path_follow = PathFollow2D.new()
	var new_enemy: BaseEnemy = enemy.instantiate()
	new_enemy.set_path_follow(path_follow, stop_point)
	if enemy_params != null:
		new_enemy.set_params(enemy_params)
	path_follow.loop = false
	path_follow.rotates = false
	
	path.add_child(path_follow)
	
	path_follow.call_deferred("add_child",new_enemy)


func spawn_multiple_enemies(enemy, path_id, amount, delay, spacing: float, order = 0):
	#print(float(order), " ", float(amount))
	spawn_enemy(enemy, path_id, 1.0 - spacing*float(order))
	
	if amount == 1:
		return
	
	var timer = Timer.new()
	add_child(timer)
	var callable = Callable(self, "spawn_multiple_enemies").bind(enemy, path_id, amount - 1, delay, spacing, order + 1)
	timer.timeout.connect(callable)
	timer.wait_time = delay
	timer.one_shot = true
	timer.start()
	
