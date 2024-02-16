#ifndef TRIANGLE_H
#define TRIANGLE_H

#include "shape.h"
#include <vector>
#include <glm.hpp>

class Triangle : public Shape {
public:
    Triangle(const glm::vec2& point1, const glm::vec2& point2, const glm::vec2& point3, glm::vec3 color);
    void draw() const override;

private:
    glm::vec2 points[3];
    void calculateVertices();
};

#endif // TRIANGLE_H
