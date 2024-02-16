#ifndef RENDERER_H
#define RENDERER_H

#include "Shader.h"
#include "constants.h"

class Renderer {
public:
    Renderer();
    ~Renderer();

    void drawShape(const GLuint VAO, const GLsizei count, GLenum primitive, glm::mat4 matrix, glm::vec3 color) const;
    void background(glm::vec3 color);
    void drawLine(const GLuint VAO, glm::mat4 matrix, glm::vec3 color, float width) const;

private:
    Shader* shader;
};

#endif // RENDERER_H
