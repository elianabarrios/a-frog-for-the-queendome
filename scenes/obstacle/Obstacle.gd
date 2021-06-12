extends KinematicBody2D

var pisao = false ##para tener control de la animación

var run = Vector2(-700,0)

func _process(delta):
	if pisao == true:
		move_and_slide(run)
	pass


func _on_PigArea_area_entered(area):
	##ACA DEBERIA LLAMAR A UNA FUNCIÓN EN PLAYER O UI PARA CONTAR LA ALTERACIÓN DEL PUNTAJE
	$Pig.play("Pisao")
	pisao = true
	
	## Reproducir sonido, cambiar de animación
	pass 


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.
