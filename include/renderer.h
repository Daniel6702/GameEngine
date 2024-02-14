#ifndef RENDERER_H
#define RENDERER_H

#include "Shader.h"

class Renderer {
public:
    Renderer(int width, int height);
    ~Renderer();

    void drawShape(const GLuint VAO, const GLsizei count, GLenum primitive, glm::mat4 matrix, glm::vec3 color) const;
    float getAspectRatio(int width, int height) const;

private:
    Shader* shader;
    float aspectRatio;
};

#endif // RENDERER_H
