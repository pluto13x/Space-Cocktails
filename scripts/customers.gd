extends Node2D

var customers: Array[Node] = []

func _ready() -> void:
	customers = get_children()
	
