extends Node2D


func _on_button_2_pressed() -> void:
	get_tree().auto_accept_quit
	


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/bg_scenes_1.tscn")
	pass # Replace with function body.
