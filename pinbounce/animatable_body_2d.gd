extends AnimatableBody2D
var launching = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	launch()
	pass # Replace with function body.

func launch():
	launching = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if launching == true:
		if position.y > 60:
			position.y -= 2
		else:
			launching = false
		
	pass
