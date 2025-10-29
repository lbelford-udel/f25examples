extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	#move the area we collided with to the respawn point
	var destination = $"../RespawnPoint".global_position
	area.global_position = destination
	var random_variation = randf_range(-400, 400)
	area.global_position.y = area.global_position.y + random_variation
