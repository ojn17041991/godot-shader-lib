shader_type canvas_item;

uniform bool enabled = false;
uniform float stepRate: hint_range(0.0, 10.0) = 4.0;
uniform float distortionSpeed: hint_range(1.0, 100.0) = 20.0;
uniform float distortionRange: hint_range(1.0, 100.0) = 3.0;

void vertex() {
	if (enabled) {
		float steps = floor(fract(TIME) * stepRate) / stepRate;
		float vx = VERTEX.x;
		float vy = VERTEX.y;
		VERTEX.x += cos(steps * distortionSpeed + vy) * -distortionRange;
		VERTEX.y += cos(steps * (distortionSpeed * 0.5) + vx + vy) * distortionRange;
	}
}