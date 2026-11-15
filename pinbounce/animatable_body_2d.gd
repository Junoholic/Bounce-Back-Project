extends AnimatableBody2D
var launching = false
var timer = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../OpenBox".visible = false
	launch()
	pass # Replace with function body.

func launch():
	launching = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if launching == true:
		timer += delta
		if timer >= 2:
			$"../OpenBox".visible = true
			$"../ClosedBox".visible = false
			if position.y > 60:
				position.y -= 2
			else:
				launching = false
				$"../OpenBox".visible = false
				$"../ClosedBox".visible = true
				queue_free()
		elif 0.5 < timer and timer < 1.5:
			$"../Handle".rotation = (timer - 0.5) / 2 * 3.1415926
		
	pass
