extends Node2D



func _ready():
	$ComicSelector.play()
	pass


func _on_Peluda_button_down():
	get_tree().change_scene("res://scenes/level_1/Challenge1Presentation.tscn")
	pass
