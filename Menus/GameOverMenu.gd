extends CenterContainer

func _on_QuitButton_pressed():
	get_tree().quit()

func _on_LoadButton_pressed():
	SaverAndLoader.is_loading = true
# warning-ignore:return_value_discarded
	SoundFx.play("Click", 1, -10)
	Music.list_stop()
	get_tree().change_scene("res://World/World.tscn")
