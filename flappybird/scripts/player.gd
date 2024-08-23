extends CharacterBody2D

const MIN_ANGLE = 0.5
const SPEED = 300.0
const JUMP_VELOCITY = -250.0
const MAX_JUMP_VELOCITY = -250.0
const MAX_ANGLE = -0.5
const MAX_GRAVITY = 200

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
			velocity += (get_gravity() * delta) / 3
		
	
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		animated_sprite.play('flip')
		if velocity.y > MAX_JUMP_VELOCITY-JUMP_VELOCITY:
			velocity.y += JUMP_VELOCITY
		else:
			velocity.y = MAX_JUMP_VELOCITY
	var angle = transform.get_rotation()
	if velocity.y > 0 and angle < MIN_ANGLE:
		rotate(0.04)
	elif velocity.y < 0 and angle > MAX_ANGLE:
		rotate(-0.04)
	print()
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.

	move_and_slide()
