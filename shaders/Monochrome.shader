shader_type canvas_item;

uniform vec3 rgbMultipliers = vec3(1, 1, 1);

void fragment() {
    COLOR = texture(TEXTURE, UV) * vec4(rgbMultipliers, 1);
    float avg = (COLOR.r + COLOR.g + COLOR.b) / (rgbMultipliers.r + rgbMultipliers.g + rgbMultipliers.b);
    COLOR.rgb = vec3(avg);
}