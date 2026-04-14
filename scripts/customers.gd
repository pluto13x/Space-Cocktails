extends Node2D

var customers: Array[Node] = []

func _ready() -> void: #assign idx to customers
	customers = get_children()
	for i in range(0, len(customers)):
		customers[i].idx = i
