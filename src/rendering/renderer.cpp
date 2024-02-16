#include "Renderer.h"

Renderer::Renderer() {
    shader = new Shader("../../shaders/vertex_shader.vert", "../../shaders/fragment_shader.frag");
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
    shader->setMat4("transformationMatrix", matrix); 
    shader->setVec3("color", color);
    glBindVertexArray(VAO);
    glDrawArrays(primitive, 0, count);
    glBindVertexArray(0);
}


void Renderer::drawLine(const GLuint VAO, glm::mat4 matrix, glm::vec3 color, float width) const {
    shader->use();
    shader->setMat4("transformationMatrix", matrix); 
    shader->setVec3("color", color);
    glLineWidth(width);
    glBindVertexArray(VAO);
    glDrawArrays(GL_LINES, 0, 2);  
    glBindVertexArray(0);
    glLineWidth(1.0f);
}