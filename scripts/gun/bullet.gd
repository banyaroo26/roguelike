extends Area2D
class_name Bullet

var bullet_speed
var bullet_damage
# var target_position

func _ready():
	pass

func _physics_process(delta):
	position += transform.x * bullet_speed * delta

func _process(_delta):
	pass
