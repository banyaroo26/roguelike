extends State

@export var body: Enemy

func Enter():
	print("Idle Entered")
	
func PhysicsProcess(_delta):
	body.velocity = Vector2.ZERO
	
func Process(_delta):
	if body.player_detected and body.speed > 0:
		transition.emit(self, 'Rush')
	
func Exit():
	pass
