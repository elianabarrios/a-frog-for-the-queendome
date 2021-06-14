extends TextureButton


func _on_SkipBg_button_down():
	get_tree().change_scene("res://scenes/player_select/PlayerSelect.tscn")
	pass 
