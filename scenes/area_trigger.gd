extends Area2D

@export var scene_name: String


func _on_body_entered(body: Node2D) -> void:
	var current_scene = get_tree().get_current_scene().get_name()
	if body.get_name() == "Player":
		if current_scene == scene_name:
			Global.lives -=1
		if (Global.lives == 0):
			get_tree().change_scene_to_file(str("res://scenes/GameOver.tscn"))
		else:
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + scene_name + ".tscn")))
