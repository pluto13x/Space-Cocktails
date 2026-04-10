extends Control

var orders: Array[Array] = [
	[1, 2], 
	[4, 5], 
	[0, 1, 2]
]
var order = -1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	order = randi_range(0, orders.size()-1)
	$ColorRect/Label.text = str(order)
