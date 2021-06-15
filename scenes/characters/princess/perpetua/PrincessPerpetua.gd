extends KinematicBody2D


const VECTOR_NORMAL = Vector2(0, -1)


func _physics_process(delta):
	move_and_slide(VECTOR_NORMAL)
	pass
