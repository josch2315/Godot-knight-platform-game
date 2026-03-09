extends Area2D

@onready var timer: Timer = $Timer
@onready var death_label: Label = $"../../player/death-Label"

func _ready() -> void:
	death_label.visible = false

func _on_body_entered(body: CharacterBody2D) -> void:
	print("you died!")
	Engine.time_scale = 0.5	
	body.get_node("CollisionShape2D").queue_free()
	death_label.visible = true
	timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
