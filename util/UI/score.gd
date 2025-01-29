extends RichTextLabel

func _process(delta):
	text = str(GameEngine.get_score())
