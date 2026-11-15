extends Node

var carrots = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("reset"):
		get_tree().reload_current_scene()
	
	if carrots == 1:
		$"../OpenBox".visible = true
		$"../ClosedBox".visible = false
		$"../Lid".disabled = false
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()
	pass # Replace with function body.
