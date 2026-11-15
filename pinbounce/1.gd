extends AudioStreamPlayer
var menuTheme = preload("res://menu_theme.ogg")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	stream = menuTheme
	self.play()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_finished() -> void:
	stream = menuTheme
	self.play()
	pass # Replace with function body.
