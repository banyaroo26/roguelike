extends State

@export var body: Enemy
@export var animation_player: AnimationPlayer

var player: Player

func Enter():
	print("Attack Entered")
	player = get_tree().current_scene.get_node("Player")
	
func PhysicsProcess(_delta):
	var distance_vector = body.calculate_distance_vector(player)
	var distance = distance_vector.length()
	
	body.velocity = Vector2.ZERO
	
	if distance > 50:
		transition.emit(self, "Rush")
	
func Process(_delta):
	pass
	
func Exit():
	print("Attack Exited")
