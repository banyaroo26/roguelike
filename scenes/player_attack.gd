extends State
class_name PlayerAttack

@export var player: CharacterBody2D
@export var marker: Marker2D

func Enter():
	print("entered attack state")
	
func Exit():
	pass
	
func PhysicsProcess(_delta):
	pass
	
func Process(_delta):
	pass
