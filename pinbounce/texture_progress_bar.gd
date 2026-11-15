extends TextureProgressBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if LivesScript.lives < 3:
		$"health 3".visible = false
	if LivesScript.lives < 2:
		$"health 2".visible = false
	if LivesScript.lives < 1:
		$"health 1".visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
