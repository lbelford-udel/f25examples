extends Area2D
var speed = 100

func _process(delta):
	position = position + Vector2(-1, 0) * speed * delta
