#version 330 core
layout (location = 0) in vec2 aPos;   // Position attribute
uniform mat4 transformationMatrix;
uniform float aspectRatio;

void main() {
    vec4 pos = transformationMatrix * vec4(aPos, 0.0, 1.0);
    gl_Position = vec4(pos.x * aspectRatio, pos.y, pos.z, 1.0);
}
