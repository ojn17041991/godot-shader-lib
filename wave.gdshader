shader_type canvas_item;

uniform bool enabled = false;
uniform float stepRate: hint_range(0.0, 10.0) = 4.0;
uniform float distortionStrength: hint_range(1.0, 10.0) = 3.0;

void vertex() {
	if (enabled) {
		float vx = VERTEX.x;
		float vy = VERTEX.y;
		VERTEX.x += cos(TIME + 1000.0 + vy) * 50.0;
	}
}