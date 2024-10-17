extends Area2D

func _on_body_entered(body):
	print("Tienes toda la vida")
	queue_free()
