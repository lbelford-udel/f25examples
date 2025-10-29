extends Node2D

## EXPRESSIONS AND OPERATIONS EXAMPLES

# Called when the node enters the scene tree for the first time.
func _ready():
	# Part I: Math Operations
	# Creating variables
	var health = 5000
	var experience = 11567
	var level = 0
	var move_speed = 2.5
	
	# Printing values and variables
	print("Print Literal: " + str(100))
	print(health)
	
	# + addition
	var addition = 40 + 2
	print("Adding example: " + str(addition))
	
	# - subtraction
	var subtract = 100.9 - 25.0
	print(subtract)
	
	# * multiplication
	var mult = 4 * 4
	print(mult)
	
	# / int division
	var division = 4 / 2
	print(division)
	
	# / float division
	var division_uneven = 5.0 / 2
	print(division_uneven)
	
	# Chain operators
	var lots_of_math = (90 + 23 - 8) * 20 / 2 / 2.5
	print(lots_of_math)
	
	# Modulo/Modulus (Remainder)
	var remainder = 5 % 2
	print(remainder)
	
	#Modulo with 10
	var ones_place = 67 % 10
	print(ones_place)
	
	var jump_counter = 4
	jump_counter = jump_counter + 1
	# Variable below would be better as a bool (see lower in Booleans section)
	# var can_flip = jump_counter % 5
	
	# Level up math - int division
	level = experience / 1000
	# increasing health by 50 per level
	health = health + 50 * level
	print(level)
	print(health)
	
	# Part II: Strings 
	var phrase = "Hello, World!"
	print(phrase)
	
	# Concatenation -- Sticking strings together
	var word_by_word = "Hello," + " " + "World!"
	print(word_by_word)
	
	var character = "Link"
	var greeting = "Hello, " + character + "! How are you?"
	print(greeting)
	
	# Converting numbers to strings example
	var star_count = 18
	var start_count_as_string = str(star_count)
	
	# Part III: Booleans -- Comparisons
	# Greater than, Less than, GTE, LTE, Equals, Not Equals
	var statement_1 = 100 > 5
	print(statement_1)
	
	print(3 < 10) # True
	print(50 >= 50) # True
	print (50 > 50) # False
	print (20 <= 25) # False
	print (15 == 15) # True
	print (15 != 24) # False
	
	# From above -- using modulo, and then comparing result against 0 using ==
	var can_flip = jump_counter % 5 == 0
	print(can_flip)
	
	# Part IV: Boolean Algebra
	# AND, OR, NOT
	
	print("Starting Bool Algebra")
	
	#And examples
	var and_ex_1 = true and true
	var and_ex_2 = true and false
	var and_ex_3 = false and true
	var and_ex_4 = false and false
	
	print(and_ex_1) # true
	print(and_ex_2) # false
	print(and_ex_3) # false
	print(and_ex_4) # false
	
	var double_jump_unlocked = true
	var is_in_air = true
	
	var can_double_jump = double_jump_unlocked and is_in_air
	print("Double jump check: " + str(can_double_jump))
	
	
	print("Starting Or examples")
	#Or examples
	var or_ex_1 = true or true
	var or_ex_2 = true or false
	var or_ex_3 = false or true
	var or_ex_4 = false or false
	
	print(or_ex_1) # true
	print(or_ex_2) # true
	print(or_ex_3) # true
	print(or_ex_4) # false
	
	# Not-- Inverts the boolean value (false becomes true, true becomes false)
	var not_example = not false
	print("Not example" + str(not_example))
