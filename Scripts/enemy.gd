extends Node2D

const velocidad = 60

var direccion = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direccion = -1
		animated_sprite.flip_h = false
	if ray_cast_left.is_colliding():
		direccion = 1
		animated_sprite.flip_h = true
		
	position.x += direccion * velocidad * delta
