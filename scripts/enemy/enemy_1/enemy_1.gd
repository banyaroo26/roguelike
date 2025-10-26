extends Enemy

@export var speed = 50
@export var enemy_1_hp = 50

func _ready():
	enemy_hp = enemy_1_hp
	
func _physics_process(_delta):
	move_and_slide()
