extends Node2D

func _ready() -> void:
	var bottles: Array[Node] = get_children()
	for i in range(len(bottles)):
		bottles[i].idx = i
		bottles[i].on_index_assigned()
		
	
