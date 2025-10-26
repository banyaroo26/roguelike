extends State

@export var body: CharacterBody2D
var hurt_value

func Enter():
	print("Enemy1Hurt Entered")
	body.enemy_hp -= hurt_value
	
func PhysicsProcess(_delta):
	transition.emit(self, "Enemy1Idle")
	
func Process(_delta):
	pass
	
func Exit():
	pass
