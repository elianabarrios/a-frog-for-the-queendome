extends TextureButton




func _ready():
	pass 


func _on_PlayButtonLevelOne_button_down():
	get_tree().change_scene("res://scenes/level_1/Level1.tscn")
	pass 
