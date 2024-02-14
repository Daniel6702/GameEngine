#ifndef SHAPE_H
#define SHAPE_H

#include <GL/glew.h>
#include <glm.hpp>
#include <gtc/matrix_transform.hpp>
#include <vector>
#include "render_queue.h"
#include "render_item.h"

class Shape {
public:
    Shape();
    virtual ~Shape();

    virtual void draw() const = 0;

    void setPosition(int x, int y);
    void setColor(int r, int g, int b);
    void setAngle(float angleDegrees);
    void move(float dx, float dy);
    glm::vec2 getPosition() const;
    
protected:
    glm::vec2 position;
    RenderItem item;
    float angle; // in degrees

    void setupBuffers(const std::vector<float>& vertices);
    glm::mat4 getTransformationMatrix() const;

    int screenWidth = 1200; 
    int screenHeight = 600;

private:
    void updateTransformationMatrix();
};

#endif // SHAPE_H
