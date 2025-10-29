extends CharacterBody2D


@export var JUMP_VELOCITY = -400.0

var game_started = false

var player_name = "Default"

var score = 0

func _physics_process(delta):
	# Add the gravity.
	if game_started:
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("flap"):
		velocity.y = JUMP_VELOCITY
		game_started = true
		#JUMP_VELOCITY = JUMP_VELOCITY - 100.0

	move_and_slide()


func _on_killbox_body_entered(body):
	if body.name == "PlayerBird":
		get_tree().reload_current_scene()
	#print("fell off bottom of screen")


func _on_pipe_body_entered(body):
	if body.name == "PlayerBird":
		get_tree().reload_current_scene()


func _on_score_area_body_entered(body):
	if body.name == "PlayerBird":
		score = score + 1
		print("Your current score is: " + str(score))
		#Find the UI label, and update its text with score
		$"../UserInterface/Label".text = "Points: " + str(score)
		
