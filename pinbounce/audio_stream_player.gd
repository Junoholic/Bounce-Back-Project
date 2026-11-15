extends AudioStreamPlayer
var Windup = preload("res://windup.mp3")
var Launch = preload("res://Launch.mp3")
var k = true
var t = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	stream = Windup
	self.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	t += delta
	if t > 2 and k:
		k = false
		stream = Launch
		self.play()
	pass
