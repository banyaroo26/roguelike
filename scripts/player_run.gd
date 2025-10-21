extends State
class_name PlayerRun

@export var player: CharacterBody2D

func Enter():
	print("entered run state")
	
func Exit():
	pass
	
func PhysicsProcess(_delta):
	var input_direction = Input.get_vector("left", "right", "up", "down")
		
	# if there is no input, move to idle state
	if not input_direction:
		transition.emit(self, "PlayerIdle")
	else:
		player.velocity = input_direction * player.SPEED
		
	var attack_input = Input.is_action_just_pressed("lmb")
	if attack_input:
		transition.emit(self, "PlayerAttack")
	
func Process(_delta):
	pass
