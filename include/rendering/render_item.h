#ifndef RENDER_ITEM_H
#define RENDER_ITEM_H

#include <GL/glew.h>
#include <glm.hpp>

struct RenderItem {
    GLuint VAO, VBO;
    GLsizei count;
    GLenum primitive;
    glm::mat4 transformationMatrix;
    glm::vec3 color;
    int layer;
    int type;
};

#endif