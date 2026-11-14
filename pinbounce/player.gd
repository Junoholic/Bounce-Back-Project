extends Area2D

@export var speed = 400 
var screen_size
var ball_size
var velocity = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	#ball_size = $ColliderShape2D.get_shape().get_size()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity.x = 0
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed
		
	velocity.y += 1
	
	if position.y + velocity.y * delta >= screen_size.y or position.y + velocity.y * delta <= 0:
		velocity.y *= -0.9
	
		
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
	
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	pass
