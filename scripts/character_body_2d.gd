extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -600.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("slime_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# get the input direction : -1 , 0 , 1
	var direction := Input.get_axis("slime_left", "slime_right")
	
	#flip the sprite
	if direction > 0:
		animated_sprite.flip_h = false
		
	if direction < 0:
		animated_sprite.flip_h = true
	
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
