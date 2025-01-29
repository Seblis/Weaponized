extends RichTextLabel

func _process(delta):
	if GameEngine.get_game_timer() != null:
		text = "%d:%02d" % [floor(GameEngine.get_game_timer().time_left / 60), int(GameEngine.get_game_timer().time_left) % 60]
	else:
		text = "NO TIMER"
