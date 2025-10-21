extends State
class_name PlayerIdle

@export var player: CharacterBody2D 

func Enter():
	pass
	
func Exit():
	pass
	
func PhysicsProcess(_delta):
	# If there is wasd input, go to run state
	var input_direction = Input.get_vector("left", "right", "up", "down")
	if input_direction:
		transition.emit(self, "PlayerRun")
		
	# If LMB input, go to attack state
	var attack_input = Input.is_action_just_pressed("lmb")
	if attack_input:
		transition.emit(self, "PlayerAttack")

	player.velocity = Vector2.ZERO
