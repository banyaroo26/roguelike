extends Area2D

const SPEED = 750
@onready var direction = Vector2.ZERO

func _physics_process(delta):
	if direction.x == 0:
		position += transform.x * direction.x * SPEED * delta


#func _on_Bullet_body_entered(body):
#	if body.is_in_group("mobs"):
#		body.queue_free()
#	queue_free()
