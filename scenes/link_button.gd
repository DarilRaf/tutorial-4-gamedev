extends LinkButton

@export var scene_to_load: String
@onready var stage_selection: ColorRect = $"../../../StageSelection"

const LEVEL_1 = preload("res://scenes/Level1.tscn")
const LEVEL_2 = preload("res://scenes/Level2.tscn")

func _on_pressed() -> void:
	var scene_path = "res://scenes/%s.tscn" % scene_to_load
	get_tree().change_scene_to_file(scene_path)


func _on_button_level_1_pressed() -> void:
	get_tree().change_scene_to_packed(LEVEL_1)


func _on_button_level_2_pressed() -> void:
	get_tree().change_scene_to_packed(LEVEL_2)


func _on_select_stage_pressed() -> void:
	stage_selection.set_visible(true)


func _on_back_to_menu_pressed() -> void:
	stage_selection.set_visible(false)
