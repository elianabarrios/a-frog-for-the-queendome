extends KinematicBody2D

var movement = Vector2(500,0)


func _ready():
	pass 

func _process (delta):
	move_and_slide(movement)
	pass

func _input(event):
	Input.is_action_just_pressed("ui_up")
	##Para deteccion del input de salto, hay que pensar cual va a ser el input
	pass
