#ifndef SHAPE_H
#define SHAPE_H

#include <GL/glew.h>
#include "Renderer.h"
#include <glm.hpp>
#include <gtc/matrix_transform.hpp>
#include <vector>

class Shape {
public:
    Shape();
    virtual ~Shape();

    virtual void draw(Renderer* renderer) const = 0;

    void setPosition(int x, int y);
    void setSize(float width, float height);
    void setColor(int r, int g, int b);
    void setAngle(float angleDegrees);
    
    
protected:
    GLuint VAO, VBO; // Vertex Array Object and Vertex Buffer Object
    glm::vec2 position;
    glm::vec2 size;
    glm::vec3 color;
    float angle; // in degrees

    void setupBuffers(const std::vector<float>& vertices);
    glm::mat4 getTransformationMatrix() const;

    int screenWidth = 1200; 
    int screenHeight = 600;

private:
    void updateTransformationMatrix();
    glm::mat4 transformationMatrix;

};

#endif // SHAPE_H
