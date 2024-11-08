extends CharacterBody2D

@export var move_speed : float = 100  # speed in pixels/sec

func _physics_process(delta):
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	velocity = input_direction * move_speed
	
	$AnimationTree.set("parameters/walk/blend_position", velocity)
		
	
	move_and_slide()
