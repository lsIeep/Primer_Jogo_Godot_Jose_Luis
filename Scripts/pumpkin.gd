extends AnimatableBody2D


func _on_area_2d_body_entered(body):
	print("Tienes toda la vida")
	queue_free()
