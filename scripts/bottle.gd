extends StaticBody2D

var idx = 0

var mouse_in = false
var held = false
var base_x = 0
var base_y = 0

func on_index_assigned():
	$sprite.texture = load("res://assets/bottles/Liquor Bottle %d.png" % idx)

func _ready() -> void:
	base_x = global_position.x
	base_y = global_position.y

func _on_mouse_entered() -> void:
	mouse_in = true


func _on_mouse_exited() -> void:
	mouse_in = false
	
func _process(_delta: float) -> void:
	#hold bottle
	if mouse_in and Input.is_action_just_pressed("left_click"):
		if held:
			held = false
		else:
			held = true
			
	if held:
		z_index += 1
		global_position.x = get_global_mouse_position().x
		global_position.y = get_global_mouse_position().y
	else: #snap back to og spot
		z_index = 1
		global_position.x = base_x
		global_position.y = base_y
