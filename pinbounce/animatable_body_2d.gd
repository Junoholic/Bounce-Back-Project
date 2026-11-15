extends AnimatableBody2D
var launching = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../OpenBox".visible = false
	launch()
	pass # Replace with function body.

func launch():
	launching = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$"../OpenBox".visible = true
	$"../ClosedBox".visible = false
	if launching == true:
		if position.y > 60:
			position.y -= 2
		else:
			launching = false
			$"../OpenBox".visible = false
			$"../ClosedBox".visible = true
			queue_free()
		
	pass
