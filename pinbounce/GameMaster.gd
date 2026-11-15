extends Node

var carrots = 0
var t = 1
var turning = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("reset"):
		get_tree().reload_current_scene()
	
	if carrots == 1:
		turning = true
	pass
	
	if turning:
		$Box/Handle.rotation = (t) / 2 * 3.1415926
		if t == 0:
			$Box/OpenBox.visible = true
			$Box/ClosedBox.visible = false
			$Box/Lid.disabled = true
			turning = false
		t -= delta
	
	if t < 0:
		t = 0


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()
	pass # Replace with function body.
