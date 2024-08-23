extends Node


@onready var obstacles = []
@onready var obstacle: Node2D = $"../Template/Obstacle"



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for item in obstacles:
		item.velocity.x = -100
		item.get_node('RigidBody2D')


func _on_ready() -> void:
	var obstacles_speed = -100
	obstacles.add_child(obstacle)
	pass # Replace with function body.
