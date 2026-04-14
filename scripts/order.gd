extends Control

var orders: Array[Array] = [
	[1, 2], 
	[4, 5], 
	[0, 1, 2]
]

func _ready() -> void:
	$"..".order_idx = randi_range(0, orders.size()-1)
	$ColorRect/Label.text = str($"..".order_idx)
