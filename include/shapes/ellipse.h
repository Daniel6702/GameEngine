#ifndef ELLIPSE_H
#define ELLIPSE_H

#include "shape.h"
#include <vector>
#include <glm.hpp>

class Ellipse : public Shape {
public:
    Ellipse(int x, int y, int radiusX, int radiusY, glm::vec3 color, unsigned int segments = 36);
    void draw() const override;
    void setRadiusX(int radiusX);
    void setRadiusY(int radiusY);
    void setSegments(unsigned int segments);
    int getRadiusX() const;
    int getRadiusY() const;

private:
    int radiusX, radiusY;
    unsigned int segments;
    void calculateVertices();
};

#endif // ELLIPSE_H