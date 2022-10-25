extends Node2D

var PerpetuaScore

var ProsperaScore

#var rng = RandomNumberGenerator.new()
#func _ready():
#	rng.randomize()
#	var PerpetuaScore = rng.randf_range(500, 1000)
#	$PerpetuaScore.text = str(PerpetuaScore)
#	var ProsperaScore = rng.randf_range(700, 1000)
#	$ProsperaScore.text = str(ProsperaScore)
#	$PeludaScore.text = str(GlobalVar.scorePoints)
	
func _ready():
	$ScoreMusic.play()
	randomize()
	PerpetuaScore = randi() %500 +500
	$PerpetuaScore.text = str(PerpetuaScore)
	randomize()
	ProsperaScore = randi() %400 +600
	$ProsperaScore.text = str(ProsperaScore)
	$PeludaScore.text = str(GlobalVar.scorePoints)

func _on_text_two_button_down():
	if GlobalVar.scorePoints > ProsperaScore and GlobalVar.scorePoints > PerpetuaScore:
		get_tree().change_scene("res://scenes/ui/WinScreen.tscn")
	if GlobalVar.scorePoints < ProsperaScore or GlobalVar.scorePoints < PerpetuaScore:
		get_tree().change_scene("res://scenes/ui/LoseScreen2.tscn")
	pass
