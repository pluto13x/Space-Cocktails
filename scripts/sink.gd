extends Area2D

var hovering
var entered_area

func _on_area_entered(area: Area2D) -> void:
	hovering = true
	entered_area = area


func _on_area_exited(_area: Area2D) -> void:
	hovering = false
	
func _process(_delta: float) -> void:
	if hovering and Input.is_action_just_pressed("right_click"):
		if "inside" in entered_area:
			entered_area.inside.clear()
	
