extends Node2D

@onready var bottom: RigidBody2D = $Bottom
@onready var top: RigidBody2D = $Top

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	bottom.linear_velocity.x = -100
	top.linear_velocity.x = -100
