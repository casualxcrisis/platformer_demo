extends AnimatedSprite2D


func _ready() -> void:
	%player.play("idle")



func _process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		%player.flip_h = false
		%player.play("jump")
		await get_tree().create_timer(0.5).timeout
		%player.play("land")
	elif Input.is_action_just_released("jump"):
		%player.flip_h = false
		%player.play('idle')
	elif Input.is_action_just_pressed("move_left"):
		%player.flip_h = true
		%player.play("run")
	elif Input.is_action_just_released("move_left"):
		%player.flip_h = true
		%player.play("idle")
	elif Input.is_action_just_pressed("move_right"):
		%player.flip_h = false
		%player.play("run")
	elif Input.is_action_just_released("move_right"):
		%player.flip_h = false
		%player.play("idle")
		
	
