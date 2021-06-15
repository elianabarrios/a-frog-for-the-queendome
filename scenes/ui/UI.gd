extends CanvasLayer

export var scorePoints = 0



func _ready():
	$Control/UIContainer/Score.text = "Score: "+ str(scorePoints)
	$Control/UIContainer/Score.modulate = Color(0,0,0,1)
	pass

func _go_score_timer():
	$ScoreTimer.start()
	pass

func _damage():
	scorePoints -= 10
	$Control/UIContainer/Score.modulate = Color(1,0,0,1)

func _on_ScoreTimer_timeout():
	scorePoints += 10
	$Control/UIContainer/Score.text = "Score: "+ str(scorePoints)
	$Control/UIContainer/Score.modulate = Color(0,0,0,1)
	pass
