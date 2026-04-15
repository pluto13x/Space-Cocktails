extends Node2D

var day = 1
var customers_that_day = 1
var customers_served = 0

func switch_day():
	day += 1
	customers_served = 0
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
	print(day)
	
func _process(_delta: float) -> void:
	if customers_served == customers_that_day:
		switch_day()
