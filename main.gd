extends Node

func _ready() -> void:
	StateManager.load_state()
	print(StateManager.state)

func _process(delta: float) -> void:
	print(StateManager.state.Score)
	StateManager.state.Score +=1
	
	
func _notification(what: int) -> void:
	## Will not be hit if game is closed via the Stop Running Project button
	## Close with the game window's X button to trigger a save
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		StateManager.save_state()
