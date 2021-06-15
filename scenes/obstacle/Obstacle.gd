extends KinematicBody2D

var pisao = false ##para tener control de la animación

var run = Vector2(-700,0)

func _process(delta):
	if pisao == true:
		move_and_slide(run)
	pass


func _on_PigArea_area_entered(area):
	get_tree().call_group("UI","_damage")
	$Pig.play("Pisao")
	pisao = true
	pass 



func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.


func _on_PigArea_area_exited(area):
	get_tree().call_group("UI","_stop_sound")
	pass # Replace with function body.
