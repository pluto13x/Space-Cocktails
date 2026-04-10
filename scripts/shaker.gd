extends Area2D

var idx = 0
var base_x = 0
var base_y = 0

var mouse_in = false
var held = false
var inside: Array[int] = []

func _ready() -> void:
	base_x = position.x
	base_y = position.y

func _on_mouse_entered() -> void:
	mouse_in = true

func _on_mouse_exited() -> void:
	mouse_in = false
	
func _process(_delta: float) -> void:
	#region hold shaker
	if mouse_in and Input.is_action_just_pressed("left_click"):
		if held:
			held = false
		else:
			held = true
			
	if held:
		z_index += 1
		position.x = get_global_mouse_position().x
		position.y = get_global_mouse_position().y
	else: #snap back to og spot
		z_index = 0
		position.x = base_x
		position.y = base_y
	#endregion
	
