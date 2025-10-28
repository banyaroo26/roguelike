extends State

@export var body: Enemy
@export var animation_player: AnimationPlayer

var player: Player

func Enter():
	print("Rush Entered")
	player = get_tree().current_scene.get_node("Player")
	animation_player.play("walk")
	
func PhysicsProcess(_delta):	
	var distance_vector = body.calculate_distance_vector(player)
	var direction = distance_vector.normalized()
	var distance = distance_vector.length()
	
	body.velocity = direction * body.speed
	
	if distance <= 20:
		transition.emit(self, "Attack")
	
func Process(_delta):
	pass
	
func Exit():
	print("Rush Exited")
