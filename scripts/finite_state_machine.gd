extends Node

@onready var states: Dictionary = {}
@onready var current_state: State
@export var initial_state: State

func _ready():
	for child in get_children():
		if child is State:
			states[child.name.to_lower()] = child
			child.transition.connect(change_state)
	current_state = initial_state

func change_state(old_state: State, new_state_name: String):
	if current_state != old_state:
		print("something wrong")
		return 
	var new_state = states[new_state_name.to_lower()]
	if not new_state:
		print("non-existant state")
		return
	if current_state:
		current_state.Exit()
	new_state.Enter()
	current_state = new_state

func _physics_process(delta):
	if current_state:
		current_state.PhysicsProcess(delta)
	
func _process(delta):
	if current_state:
		current_state.Process(delta)
