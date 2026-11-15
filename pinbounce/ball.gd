extends RigidBody2D
var Bounce = preload("res://lesiakower-coin-collect-retro-8-bit-sound-effect-145251_7p4orl6R.mp3")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node) -> void:
	if Time.get_ticks_msec() - $"../TimeLabel".resetTime > 2750:
		$bounce.stream = Bounce
		$bounce.play()
	pass # Replace with function body.
