extends CharacterBody2D

const SPEED = 1000
var target_position

func _ready():
	pass

func _physics_process(delta):
	velocity = target_position * SPEED 
	# velocity += target_positin * SPEED
	move_and_slide()
