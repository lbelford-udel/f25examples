extends Node2D


#This script is attached to the Parent of PlayerBird
func reset_game():
	#Sets value of two variables on the Player
	$PlayerBird.score = 0
	$PlayerBird.game_started = false
	
	#Another way to do the same thing, saving the PlayerBird
	#node in a variable first
	var player = $PlayerBird
	player.score = 0
	player.game_started = false
	
	
