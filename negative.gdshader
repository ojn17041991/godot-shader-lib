shader_type canvas_item;

uniform bool enabled = false;

void fragment() {
	if (enabled) {
		COLOR.r = 1.0 - COLOR.r;
		COLOR.g = 1.0 - COLOR.g;
		COLOR.b = 1.0 - COLOR.b;
	}
}