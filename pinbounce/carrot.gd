extends Node
@onready var main: Node = $".."
var Collect = preload("res://freesound_community-8-bit-powerup-6768.mp3")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	main.carrots += 1
	$"../AudioStreamPlayer".stream = Collect
	$"../AudioStreamPlayer".play()
	queue_free()
	pass # Replace with function body.
