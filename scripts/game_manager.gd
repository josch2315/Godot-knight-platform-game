extends Node2D

var score = 0

@onready var score_label: Label = $scoreLabel


func add_point():
	score += 1
	print("+1 coin")
	score_label.text = "coins = " + str(score)
