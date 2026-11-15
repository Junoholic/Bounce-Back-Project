extends Node

var carrots = 0
var t = 1
var timer = 0
var turning = false
var Death = preload("res://My Project.mp3")
var Catch = preload("res://catch.mp3")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if LivesScript.lives < 3:
		$AudioStreamPlayer.stream = Death
		$AudioStreamPlayer.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer += delta
	if Input.is_action_pressed("reset") and timer > 2:
		reset()
	
	if carrots == 4:
		turning = true
	pass

	if turning:
		$Box/Handle.rotation = (t) / 2 * 3.1415926
		if t == 0:
			$Box/OpenBox.visible = true
			$Box/ClosedBox.visible = false
			$Box/Lid.disabled = true
			turning = false
		t -= delta
	
	if t < 0:
		t = 0
		
	if LivesScript.lives == 0:
		change()
		

func change():
	if is_inside_tree():
		get_tree().paused = false
		get_tree().change_scene_to_file("res://YouLose.tscn")
	

func _on_area_2d_body_entered(body: Node2D) -> void:
	reset()
	pass # Replace with function body.


func _on_win_body_entered(body: Node2D) -> void:
	if carrots == 4:
		$AudioStreamPlayer.stream = Catch
		$AudioStreamPlayer.play()
		$Ball.queue_free()
		$Box/OpenBox.visible = false
		$Box/ClosedBox.visible = true
		await get_tree().create_timer(1).timeout
		get_tree().change_scene_to_file("res://WinScreen3-4.tscn")
	pass # Replace with function body.
	
func reset():
	LivesScript.lives -= 1
	get_tree().reload_current_scene()
