extends Area2D

@onready var player: CharacterBody2D = $"../player"

func _on_body_entered(body):
		get_tree().change_scene_to_file("res://levels/level_2.tscn")
