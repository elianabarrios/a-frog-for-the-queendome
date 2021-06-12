extends KinematicBody2D

var movement = Vector2(500,0)

func _ready():
	pass 
func _physics_process(delta):
	movement.y += 50
	if is_on_floor():
		movement.y = 0
	if Input.is_action_just_pressed("ui_up"):
		movement.y = -800
	move_and_slide(movement, Vector2(0, -1))
	pass
