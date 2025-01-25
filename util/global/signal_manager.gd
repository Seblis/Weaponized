extends Node

# signals definitions go here
signal on_player_health_updated(new_health: int)
signal on_game_over(player_won:bool)
signal on_wave_defeated()
