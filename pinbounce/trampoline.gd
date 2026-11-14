extends AnimatableBody2D
var screen_size
var velocity
var speed = 1000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_left"):
		position.x += min(speed * delta, screen_size.x)
	if Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"):
		position.x -= max(speed * delta, 0)

	
	#position = position.clamp(Vector2.ZERO, screen_size)
	pass
