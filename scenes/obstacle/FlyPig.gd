extends KinematicBody2D

var flying = Vector2(-300,0)
var start = false

func _physics_process(delta):
	if start == true:
		move_and_slide(flying)
	pass



func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_entered():
	start = true
	pass # Replace with function body.


func _on_PiggyArea_area_entered(area):
	get_tree().call_group("UI","_damage")
	pass # Replace with function body.


func _on_PiggyArea_area_exited(area):
	get_tree().call_group("UI","_stop_sound")
	pass # Replace with function body.



