extends CanvasLayer


func _ready():
	$Control/UIContainer/Score.text = "Score: "+ str(GlobalVar.scorePoints)
	$Control/UIContainer/Score.modulate = Color(0,0,0,1)
	pass

func _stop_timer():
	$ScoreTimer.stop()

func _go_score_timer():
	$ScoreTimer.start()
	pass

func _damage():
	$Cabasho.play()
	GlobalVar.scorePoints -= 10
	$Control/UIContainer/Score.modulate = Color(1,0,0,1)

func _on_ScoreTimer_timeout():
	GlobalVar.scorePoints += 10
	$Control/UIContainer/Score.text = "Score: "+ str(GlobalVar.scorePoints)
	$Control/UIContainer/Score.modulate = Color(0,0,0,1)
	pass
