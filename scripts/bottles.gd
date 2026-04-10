extends Node2D

var bottles: Array[Node] = []

func _ready() -> void:
	bottles = get_children()
	for i in range(len(bottles)):
		bottles[i].idx = i
		bottles[i].on_index_assigned()
		

func _on_shaker_area_entered(area: Area2D) -> void:
	print(area.idx)
