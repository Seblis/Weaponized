extends CanvasLayer

@onready var lbl_death = $VBoxContainer/Control/lblDeath
@onready var lbl_win = $VBoxContainer/Control/lblWin
@onready var game_score = %GameScore

func _ready():
	SignalManager.on_game_over.connect(game_over)

func _process(_delta):
	if Input.is_action_just_pressed("ui_select"):
		get_tree().paused = false
		get_tree().change_scene_to_file("res://levels/menu/main_menu.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func game_over(player_win: bool):
	get_tree().paused = true
		
	if player_win:
		lbl_win.visible = true
		game_score.text = str(GameEngine.get_score())
		game_score.visible = true
	else:
		lbl_death.visible = true
		
	visible = true
	
