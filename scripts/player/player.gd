extends CharacterBody2D

const SPEED = 350

func _ready():
	pass
	
func _physics_process(delta):
	move_and_slide()
	
func _process(delta):
	pass
