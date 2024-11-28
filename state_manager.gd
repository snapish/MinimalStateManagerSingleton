extends Node

@export var state : StateObject


func load_state():
	if !ResourceLoader.exists("user://asdf.tres"):
		print("no file found, setting state to new stateobject")
		state = StateObject.new()
	else:
		print("loading .tres state object")
		state = ResourceLoader.load("user://asdf.tres")
	return state

func save_state():
	if state !=null:
		print("Saving existing state objct")
		ResourceSaver.save(state, "user://asdf.tres")
	else:
		print("Saving new state object to file")
		ResourceSaver.save(StateObject.new(), "user://asdf.tres")
