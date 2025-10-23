extends CharacterBody2D
class_name Gun

@onready var user: CharacterBody2D = get_parent()
@onready var sprite: Sprite2D = get_node("Sprite")
@onready var marker: Marker2D = $Marker
@onready var world: Node2D = get_tree().current_scene

var bullet_scene: String

func _ready():
	pass
	
func _physics_process(delta):
	look_at(get_global_mouse_position())
	rotation_degrees = wrap(rotation_degrees, 0, 360)
	if rotation_degrees > 90 and rotation < 270:
		sprite.flip_h = true
	else:
		sprite.flip_h = false
	
func _process(delta):
	pass	

func fire():
	var bullet = load(bullet_scene).instantiate()
	var marker_global_pos = marker.global_position
	var mouse_global_pos  = world.get_global_mouse_position()
	bullet.position   = marker_global_pos
	bullet.target_position = (mouse_global_pos - marker_global_pos).normalized()
	bullet.rotation = rotation
	world.add_child(bullet)	
	
func knockback(knockback_force):
	var direction_to_mouse = (world.get_global_mouse_position() 
								- user.global_position).normalized()
	var opposite_direction = -direction_to_mouse
	user.global_position += opposite_direction * knockback_force
