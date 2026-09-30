extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.call_deferred("queue_free")
		get_tree().reload_current_scene()
