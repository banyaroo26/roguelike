extends State
class_name PlayerAttack

@export var player: CharacterBody2D

func Enter():
	var weapon = player.get_node("Weapon")
	weapon.fire()
	
func PhysicsProcess(_delta):
	transition.emit(self, "PlayerIdle")
	
func Process(_delta):
	pass
		
func Exit():
	pass
