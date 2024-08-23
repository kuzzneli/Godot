extends Node

@onready var timer: Timer = $Timer

var rng = RandomNumberGenerator.new()
var obstacle = load('res://scenes/obstacle.tscn').instantiate()
var copy = obstacle.duplicate()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var pos = rng.randf_range(-150.0, 150.0)
	copy.position.y = pos
	add_child(copy)
	timer.start()
	print(get_tree())



func _on_timer_timeout() -> void:
	copy = obstacle.duplicate()
	var pos = rng.randf_range(-150.0, 150.0)
	copy.position.y = pos
	add_child(copy)
	timer.start()
