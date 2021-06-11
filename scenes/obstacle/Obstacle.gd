extends StaticBody2D

var pisao = false ##para tener control de la animación


#func _process(delta):
#	pass


func _on_PigArea_area_entered(area):
	##ACA DEBERIA LLAMAR A UNA FUNCIÓN EN PLAYER O UI PARA CONTAR LA ALTERACIÓN DEL PUNTAJE
	pisao = true
	## Reproducir sonido, cambiar de animación
	pass 
