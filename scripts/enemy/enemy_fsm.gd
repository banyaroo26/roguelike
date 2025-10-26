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

func enter_the_state(state):
	if current_state:
		current_state.Exit()
	state.Enter()
	current_state = state

func change_state(old_state: State, new_state_name: String):
	if current_state != old_state:
		print("something wrong")
		return 
	var new_state = states[new_state_name.to_lower()]
	if not new_state:
		print("non-existant state")
		return
	enter_the_state(new_state)

func _physics_process(delta):
	if current_state:
		current_state.PhysicsProcess(delta)
	
func _process(delta):
	if current_state:
		current_state.Process(delta)

func _on_hit_box_area_area_entered(area):
	var new_state = null
	if area is Bullet:
		new_state = states['Enemy1Hurt'.to_lower()]
		new_state.hurt_value = area.bullet_damage
		print(area.velocity)
		enter_the_state(new_state)
		area.queue_free()
