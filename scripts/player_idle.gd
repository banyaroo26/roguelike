extends State
class_name PlayerIdle

@export var player: CharacterBody2D 

func Enter():
	print("entered idle state")
	
func Exit():
	pass
	
func PhysicsProcess(_delta):
	var input_direction = Input.get_vector("left", "right", "up", "down")
	
	# If there is movement input, go to run state
	if input_direction:
		transition.emit(self, "PlayerRun")
		
	var attack_input = Input.is_action_just_pressed("lmb")
	if attack_input:
		transition.emit(self, "PlayerAttack")

	player.velocity = Vector2.ZERO
