extends State

@export var body: Enemy
var damage_taken

func Enter():
	print("Hurt Entered")
	body.health_point -= damage_taken
	
func PhysicsProcess(_delta):
	if body.health_point <= 0:
		transition.emit(self, "Die")
	else:
		transition.emit(self, "Idle")
	
func Process(_delta):
	pass
	
func Exit():
	pass
