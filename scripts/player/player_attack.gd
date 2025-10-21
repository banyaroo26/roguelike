extends State
class_name PlayerAttack

@export var player: CharacterBody2D
@export var marker: Marker2D

@onready var world = player.get_parent()
@onready var bullet_template = preload("res://scenes/bullet.tscn")

var mouse_global_pos
var marker_global_pos

func shoot():
	""" 
	Bullets will be shot towards the mouse.
	target direction = normalize(targe pos - player pos)  
	"""
	var bullet 		  = bullet_template.instantiate()
	marker_global_pos = marker.global_position
	bullet.position   = marker_global_pos
	mouse_global_pos  = world.get_global_mouse_position()
	bullet.target_position = (mouse_global_pos - marker_global_pos).normalized()
	world.add_child(bullet)

func Enter():
	shoot()
	
func PhysicsProcess(_delta):
	transition.emit(self, "PlayerIdle")
	
func Process(_delta):
	pass
		
func Exit():
	pass
