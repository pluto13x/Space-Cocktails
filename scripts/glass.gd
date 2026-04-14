extends Area2D

class_name Glass

var idx = 0
var base_x = 0
var base_y = 0
var inside: Array[int] = []
var hovering: Array[bool] = []

var mouse_in = false
var held = false

func _ready() -> void:
	hovering.resize(4)
	hovering.fill(false)
	base_x = position.x
	base_y = position.y

func _on_mouse_entered() -> void:
	mouse_in = true

func _on_mouse_exited() -> void:
	mouse_in = false
	
func _process(_delta: float) -> void:
	#region hold 
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

func _on_customer_0_area_entered(area: Area2D) -> void:
	if area is Glass:
		hovering[0] = true

func _on_customer_0_area_exited(area: Area2D) -> void:
	if area is Glass:
		hovering[0] = false


func _on_customer_1_area_entered(area: Area2D) -> void:
	if area is Glass:
		hovering[1] = true

func _on_customer_1_area_exited(area: Area2D) -> void:
	if area is Glass:
		hovering[1] = false


func _on_customer_2_area_entered(area: Area2D) -> void:
	if area is Glass:
		hovering[2] = true

func _on_customer_2_area_exited(area: Area2D) -> void:
	if area is Glass:
		hovering[2] = false


func _on_customer_3_area_entered(area: Area2D) -> void:
	if area is Glass:
		hovering[3] = true

func _on_customer_3_area_exited(area: Area2D) -> void:
	if area is Glass:
		hovering[3] = false
