extends Enemy

@export var sp = 120
@export var hp = 50

func _ready():
	health_point = hp
	speed = sp
	player_detected = true
	$DieSprite.visible = false
	$WalkSprite.visible = true
	
func _physics_process(_delta):
	move_and_slide()
