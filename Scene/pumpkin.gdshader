shader_type canvas_item;

uniform float extend_amplitude : hint_range(0.0, 10.0) = 3.0;
uniform float extend_frequency : hint_range(0.0, 300.0, 0.1) = 5.0;


void vertex() {
	VERTEX.y -= abs(sin(TIME*extend_frequency))*extend_amplitude;
}
