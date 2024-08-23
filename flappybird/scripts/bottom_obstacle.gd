extends Area2D

const SPEED = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.x > -500:
		position.x += -SPEED * delta
	else:
		queue_free()
