extends Button


func _on_pressed() -> void:
	LivesScript.lives = 3
	get_tree().change_scene_to_file("res://LevelTwo.tscn")
