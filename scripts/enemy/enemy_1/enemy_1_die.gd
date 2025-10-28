extends State

@export var body: Enemy
@export var animation_player: AnimationPlayer
var hurt_value

func Enter():
	print("Die Entered")
	body.get_node("DieSprite").visible = true
	body.get_node("WalkSprite").visible = false
	animation_player.play("die")
	animation_player.animation_finished.connect(_on_animation_finished)
	
func _on_animation_finished(animation_name):
	if animation_name == 'die':
		body.queue_free()
	
func PhysicsProcess(_delta):
	pass
	
func Process(_delta):
	pass
	
func Exit():
	print("Die Exited")
	animation_player.animation_finished.disconnect(_on_animation_finished)
