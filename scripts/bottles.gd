extends Node2D

var bottles: Array[Node] = []
var current_idx = -1

var hovering_over_shaker = false

func _ready() -> void:
	bottles = get_children()
	for i in range(len(bottles)):
		bottles[i].idx = i
		bottles[i].on_index_assigned()
		

func _on_shaker_area_entered(area: Area2D) -> void:
	if area is Bottle:
		hovering_over_shaker = true

func _on_shaker_area_exited(area: Area2D) -> void:
	if area is Bottle:
		hovering_over_shaker = false
		
func _process(_delta: float) -> void:
	if hovering_over_shaker:
		if Input.is_action_just_pressed("right_click") and current_idx != -1:
			$"../Shaker".inside.append(current_idx)
			$"../Shaker".inside.sort()
			print($"../Shaker".inside)
		
