extends Area2D


@onready var game_manager: Node2D = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer



func _on_body_entered(body: CharacterBody2D) -> void:
	game_manager.add_point()
	animation_player.play("pickup-animation")


func _on_levelup_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
