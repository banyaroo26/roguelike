extends CharacterBody2D
class_name Enemy

var health_point
var player_detected
var speed

func _ready():
	pass
	
func _physics_process(_delta):
	pass
	
func _process(_delta):
	pass
	
func attack():
	pass

func calculate_distance_vector(player: Player) -> Vector2:
	""" Returns the distance vector between player and the enemy self. """
	var player_position = player.global_position
	var body_position = global_position
	
	var distance_vector = player_position - body_position
	
	return distance_vector
