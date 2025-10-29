extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _process(delta):
	pass

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	"""
	This code is identical to the Input.get_axis line below
	
	var direction
	var is_moving_right = Input.is_action_just_pressed("ui_right")
	var is_moving_left = Input.is_action_just_pressed("ui_left")
	if is_moving_right and is_moving_left:
		direction = 0
	elif is_moving_right:
		direction = 1
	elif is_moving_left:
		direction = -1
	else:
		direction = 0
	"""
		
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_area_2d_body_entered(body):
	print("I entered an area")



func _on_area_2d_body_exited(body):
	print("I left an area")
