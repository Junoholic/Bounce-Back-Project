extends AnimatableBody2D
var screen_size
var velocity	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		velocity.x += 400
	if Input.is_action_pressed("move_left"):
		velocity.x -= 400
	
	
	
	position.x += velocity.x * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	pass
