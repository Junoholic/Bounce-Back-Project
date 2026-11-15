extends Control
var Lose = preload("res://freesound_community-8-bit-explosion-low-resonant-45659.mp3")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AudioStreamPlayer.stream = Lose
	$AudioStreamPlayer.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
