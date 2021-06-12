extends Node2D

var timerCount = 0

func _on_Timer_timeout():
	timerCount +=1
	
	if timerCount ==1:
		$IntroductionText.text = "Los príncipes combatían en diferentes disciplinas para ganarse el privilegio de desposar a una princesa"
	if timerCount == 2:
		$IntroductionText.text = "Pero en este juego y esta época serán las princesas las que se pondrán a prueba para desposar…"
	if timerCount == 3:
		$IntroductionText.text = "... un sapo???!"
	if timerCount == 4:
		$IntroductionText.text = "Emm… bueno, en realidad sólo lo hacen para poder reinar y el dinero, por supuesto"
	
	if timerCount == 5:
		get_tree().change_scene("res://scenes/player_select/PlayerSelect.tscn")
	pass 
