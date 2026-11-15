extends Label#Node.reload_current_scene()
@onready var main: Node = $".."
var resetTime = Time.get_ticks_msec()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = str(32 - (Time.get_ticks_msec() - resetTime) / 1000)
	
	if 32 - (Time.get_ticks_msec() - resetTime) / 1000 <= 0:
		get_tree().reload_current_scene()
	pass
