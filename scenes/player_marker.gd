extends Marker2D

@onready var bullet_template = preload("res://scenes/bullet.tscn")

const COORD_1 = 25
const COORD_2 = 0

func _ready():
	self.position = Vector2(COORD_1, COORD_2)
