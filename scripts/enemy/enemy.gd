extends CharacterBody2D
class_name Enemy

var enemy_hp

func _ready():
	pass
	
func _physics_process(_delta):
	pass
	
func _process(_delta):
	die()

func die():
	if enemy_hp <= 0:
		queue_free()
