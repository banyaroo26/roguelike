extends State

@export var body: CharacterBody2D

func Enter():
	print("Enemy1Idle Entered")
	
func PhysicsProcess(_delta):
	body.velocity = Vector2.ZERO
	
func Process(_delta):
	pass
	
func Exit():
	pass
