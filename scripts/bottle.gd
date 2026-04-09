extends StaticBody2D

var mouse_in = false
var held = false
var base_x = 0
var base_y = 0


func _ready() -> void:
	base_x = global_position.x
	base_y = global_position.y

func _on_mouse_entered() -> void:
	mouse_in = true


func _on_mouse_exited() -> void:
	mouse_in = false
	
func _process(_delta: float) -> void:
	if mouse_in and Input.is_action_just_pressed("left_click"):
		if held:
			held = false
		else:
			held = true
			
	if held:
		global_position.x = get_global_mouse_position().x
		global_position.y = get_global_mouse_position().y
	else:
		global_position.x = base_x
		global_position.y = base_y
