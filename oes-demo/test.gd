extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# Part I: Math Operations
	var health = 5000
	var experience = 11567
	var level = 0
	var move_speed = 2.5
	
	print("Print Literal: " + str(100))
	print(health)
	
	#+
	var addition = 40 + 2
	print("Adding example: " + str(addition))
	
	# -
	var subtract = 100.9 - 25.0
	print(subtract)
	
	# *
	var mult = 4 * 4
	print(mult)
	
	# int division
	var division = 4 / 2
	print(division)
	
	# float division
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
	# Variable below would be better as a bool
	#var can_flip = jump_counter % 5
	
	# Level up math
	level = experience / 1000
	#health = 50 * level
	health = health + 50 * level
	print (level)
	print(health)
	
	# Part II: Strings -- Concatenation
	var phrase = "Hello, World!"
	print(phrase)
	
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
	
	print(and_ex_1)
	print(and_ex_2)
	print(and_ex_3)
	print(and_ex_4)
	
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
	
	print(or_ex_1)
	print(or_ex_2)
	print(or_ex_3)
	print(or_ex_4)
	
	var not_example = not false
	print("Not example" + str(not_example))
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass









"""
Math Operations
	1. Add/subtract
	2. Mult
	3. Divide
	4. Uh-oh! Integer division!
	5. Modulo (Remainder)
"""

"""
Expressions and Substitution
	1. Multiple operations in one line
	2. Statements contain expressions
	3. Expressions can contain other expressions
	4. Solve one step at a time with substitution
"""

"""
Operations on other types
	1. String concatenation
	2. Comparison Operators
		1. >
		2. <
		3. >=
		4. <=
		5. ==
		6. !=
	3. Boolean Algebra
	
"""

"""
Using Variables in Place of Values
"""


# Addition
# Subtraction
# Mult
# Division (Int Division
