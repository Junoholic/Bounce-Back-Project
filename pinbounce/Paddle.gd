extends AnimatableBody2D

var cooldown
var baseposition
var rotationMult = 8
var length = 0.2
var rot

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cooldown = 0
	baseposition = position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("reset"):
		get_tree().reload_current_scene()
	
	if Input.is_action_pressed("paddle 1"):
		if cooldown == 0:
			cooldown = length
	
	if cooldown >= 0:
		if cooldown >= length / 2:
			rot = -rotationMult * (length - cooldown)
		else:
			rot = -rotationMult * cooldown
			
		rotation = rot
		cooldown -= delta
		cooldown = max(cooldown, 0)
	pass
