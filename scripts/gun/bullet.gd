extends CharacterBody2D
class_name Bullet

var target_position
var bullet_speed

func _ready():
	pass

func _physics_process(delta):
	# velocity = target_position * bullet_speed 
	velocity += target_position * bullet_speed
	move_and_slide()

func _process(delta):
	pass
