shader_type canvas_item;

uniform bool enabled = false;
uniform float threshold: hint_range(0.0, 1.0) = 0.5;

void fragment() {
	if (enabled) {
		float avg = ceil(
			(COLOR.r - threshold) +
			(COLOR.g - threshold) +
			(COLOR.b - threshold)
			/ 3.0);
		COLOR.rgb = vec3(avg);
	}
}