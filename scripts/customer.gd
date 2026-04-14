extends Area2D

var idx = 0
var base_x = 0
var base_y = 0
var spawn = true
var order_idx = -1

func _ready() -> void:
	base_x = global_position.x
	base_y = global_position.y
	
	global_position.y += 300
	
func _process(delta: float) -> void:
	if global_position.y > base_y and spawn:
		global_position.y -= 300 * delta 
	elif global_position.y < base_y + 300 and not spawn:
		global_position.y += 300 * delta
		

func check_order():
	print($"../../Glass".inside)
	print($order.orders[order_idx])
	if $"../../Glass".inside == $order.orders[order_idx]:
		print("success")
	else:
		print("fail")
