#include "Renderer.h"

Renderer::Renderer(int width, int height) {
    shader = new Shader("../../shaders/vertex_shader.vert", "../../shaders/fragment_shader.frag");
    aspectRatio = getAspectRatio(height, width);
}

float Renderer::getAspectRatio(int width, int height) const {
    return static_cast<float>(width) / static_cast<float>(height);
}

Renderer::~Renderer() {
    delete shader;
}

void Renderer::background(glm::vec3 color) {
    float r = color.x / 255.0f;
    float g = color.y / 255.0f;
    float b = color.z / 255.0f;
    glClearColor(r, g, b, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
}

void Renderer::drawShape(const GLuint VAO, const GLsizei count, GLenum primitive, glm::mat4 matrix, glm::vec3 color) const {
    shader->use();
    shader->setFloat("aspectRatio", aspectRatio);
    shader->setMat4("transformationMatrix", matrix); 
    shader->setVec3("color", color);
    glBindVertexArray(VAO);
    glDrawArrays(primitive, 0, count);
    glBindVertexArray(0);
}

