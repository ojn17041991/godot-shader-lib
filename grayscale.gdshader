shader_type canvas_item;

uniform bool enabled = false;

void fragment() {
	if (enabled) {
		float rCoeff = 0.2126;
		float gCoeff = 0.7152;
		float bCoeff = 0.7222;
		float avg = (
				COLOR.r * rCoeff +
				COLOR.g * gCoeff + 
				COLOR.b * bCoeff
			) / 3.0;
		COLOR.rgb = vec3(avg);
	}
}