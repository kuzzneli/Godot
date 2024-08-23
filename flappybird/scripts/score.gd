extends Node

var zero = preload("res://flappy-bird-assets-master/sprites/0.png")
var one = preload("res://flappy-bird-assets-master/sprites/1.png")
var two = preload("res://flappy-bird-assets-master/sprites/2.png")
var three = preload("res://flappy-bird-assets-master/sprites/3.png")
var four = preload("res://flappy-bird-assets-master/sprites/4.png")
var five = preload("res://flappy-bird-assets-master/sprites/5.png")
var six = preload("res://flappy-bird-assets-master/sprites/6.png")
var seven = preload("res://flappy-bird-assets-master/sprites/7.png")
var eight = preload("res://flappy-bird-assets-master/sprites/8.png")
var nine = preload("res://flappy-bird-assets-master/sprites/9.png")

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func addPoint():
	score += 1
	print(score)
	showScore()
	
func showScore():
	for i in str(score):
		print(i)
	
