shader_type canvas_item;

uniform bool enabled = false;
uniform float stepRate: hint_range(0.0, 10.0) = 4.0;
uniform float distortionStrength: hint_range(1.0, 10.0) = 3.0;

void vertex() {
	if (enabled) {
		float steps = floor(fract(TIME) * stepRate) / stepRate;
		VERTEX.x += cos(steps * 20.0 + VERTEX.x + VERTEX.y) * distortionStrength;
		VERTEX.y += cos(steps * 20.0 + VERTEX.x + VERTEX.y) * distortionStrength;
	}
}