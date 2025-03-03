extends Area2D

var camera: Camera2D
@onready var player: CharacterBody2D = $"../Player"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	camera = player.get_node("Camera2D")


func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		camera.limit_right = 1728
		camera.limit_bottom = 680
		camera.limit_top = -200
