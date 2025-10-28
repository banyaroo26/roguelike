extends Player

@export var speed = 100

func _ready():
	pass
	
func _physics_process(_delta):
	move_and_slide()
	
func _process(_delta):
	pass
