extends Area2D

var idx = 0
var base_x = 0
var base_y = 0
var spawn = true
var order_idx = -1
var spawned = false
	

func _ready() -> void:
	base_x = global_position.x
	base_y = global_position.y
	
	$Sprite2D.global_position.y += 300
	
func _process(delta: float) -> void:
	if $Sprite2D.global_position.y > base_y and spawn:
		$Sprite2D.global_position.y -= 300 * delta 
		spawned = false
	elif $Sprite2D.global_position.y < base_y + 300 and not spawn:
		$Sprite2D.global_position.y += 300 * delta
		spawned = false
	elif $Sprite2D.global_position.y <= base_y:
		spawned = true

	#only detect collissions if spawned
	if spawned: 
		monitoring = true
		monitorable = true
	else:
		monitoring = false
		monitorable = false


func check_order():
	print($"../../Glass".inside)
	print($order.orders[order_idx])
	if $"../../Glass".inside == $order.orders[order_idx]:
		print("success")
		spawn = false
		$"../../Glass".position = Vector2($"../../Glass".base_x, $"../../Glass".base_y)
		$"../../Glass".held = false
		$"../../Glass".inside.clear()
	else:
		print("fail")
