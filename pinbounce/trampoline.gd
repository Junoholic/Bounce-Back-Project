extends AnimatableBody2D
var screen_size
var velocity
var speed = 1000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var pos = global_position.x
	if Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_left"):
		pos += speed * delta
	if Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"):
		pos -= speed * delta
	#print(position)
	pos = max(min(pos, screen_size.x - 120), 120)
	global_position.x = pos

	
	#position = position.clamp(Vector2.ZERO, screen_size)
	pass
