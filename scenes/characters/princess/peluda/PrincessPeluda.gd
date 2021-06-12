extends KinematicBody2D

var movement = Vector2(500,0)

var isOnAir = false

const VECTOR_NORMAL = Vector2(0, -1)

func _ready():
	pass 
func _physics_process(delta):
	movement.y += 30
	if is_on_floor():
		movement.y = 0
		isOnAir = false
	if Input.is_action_just_pressed("ui_up") and isOnAir == false:
		movement.y = -1100
		isOnAir = true
	move_and_slide(movement, VECTOR_NORMAL)
	pass
