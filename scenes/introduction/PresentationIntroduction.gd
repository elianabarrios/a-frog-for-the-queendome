extends Node2D

var timerCount = 0

func _on_Timer_timeout():
	timerCount +=1
	
	if timerCount ==1:
		$TextContainer/IntroductionText.text = "Los príncipes competían en\n diferentes disciplinas para ganarse\n el privilegio de desposar \na una princesa"
	if timerCount == 2:
		$TextContainer/IntroductionText.text = "Pero en este juego y esta época\n serán las princesas las que\n se pondrán a prueba para desposar. . ."
	if timerCount == 3:
		$TextContainer/IntroductionText.text = ". . . un sapo???!"
		$EpicMusic.stop()
		$ComicMusic.play()
	if timerCount == 4:
		$TextContainer/IntroductionText.text = "Emm. . . bueno, en realidad\n sólo lo hacen para poder reinar. . .\n y el dinero, por supuesto"
	
	if timerCount == 5:
		get_tree().change_scene("res://scenes/player_select/PlayerSelect.tscn")
	pass 
