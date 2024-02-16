#ifndef RECTANGLE_H
#define RECTANGLE_H

#include "shape.h"
#include <vector>
#include <glm.hpp>

class Rectangle : public Shape {
public:
    Rectangle(int x, int y, int width, int height, glm::vec3 color);
    void draw() const override;
    void setWidth(int width);
    void setHeight(int height);
    int getWidth() const;
    int getHeight() const;

private:
    int width, height;
    void calculateVertices();
};

#endif // RECTANGLE_H
