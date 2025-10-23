extends Gun
class_name Gun0

@export var bullet0_scene: String = "res://scenes/gun/bullet0.tscn"
@onready var cooldown_timer: Timer = $CooldownTimer

var cooldown = 0.5
var knockback_force = 1
var can_fire = true

func _ready():
	cooldown_timer.one_shot = true
	cooldown_timer.wait_time = 0.0001
	cooldown_timer.connect("timeout", Callable(self, "_on_cooldown_timer_timeout"))

func fire():
	print(cooldown_timer.wait_time)
	if can_fire:
		# fire the gun
		bullet_scene = bullet0_scene
		super.fire()
		# cool down
		cooldown_timer.start()
		can_fire = false
		# knockback
		knockback(knockback_force)
		
func _on_cooldown_timer_timeout():
	can_fire = true
