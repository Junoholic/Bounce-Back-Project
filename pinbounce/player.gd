extends RigidBody2D

@export var speed = 400 
var screen_size
var velocity	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	#ball_size = $ColliderShape2D.get_shape().get_size()

func _integrate_forces(state):
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed	
	state = velocity

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	_integrate_forces(position)
		#velocity.x = 0
	#if Input.is_action_pressed("move_right"):
		#velocity.x += speed
	#if Input.is_action_pressed("move_left"):
		#velocity.x -= speed	
	
	
	
	#position.x += velocity.x * delta
	#position.x = position.clamp(Vector2.ZERO, screen_size).x
	pass
