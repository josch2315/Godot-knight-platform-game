extends Node2D



const speed = 60

var direction = 1
@onready var rayCastleft: RayCast2D = $RayCastleft
@onready var raycastright: RayCast2D = $raycastright
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycastright.is_colliding():
		animated_sprite.flip_h = true
		direction = -1
		
	if rayCastleft.is_colliding():
		direction = +1
		animated_sprite.flip_h = false
	
	position.x += direction * speed * delta
