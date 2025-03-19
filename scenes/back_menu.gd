extends LinkButton

@export var scene_to_load: String

func _on_pressed() -> void:
	var scene_path = "res://scenes/%s.tscn" % scene_to_load
	get_tree().change_scene_to_file(scene_path)
