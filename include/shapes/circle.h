#ifndef CIRCLE_H
#define CIRCLE_H

#include "Shape.h"

class Circle : public Shape {
public:
    Circle(int x, int y, int radius, glm::vec3 color = glm::vec3(255, 255, 255), unsigned int segments = 36);
    void draw() const override;
    void setRadius(int radius);
    int getRadius() const;
    void setSegments(unsigned int segments);

private:
    int radius;
    unsigned int segments;
    void calculateVertices();

};

#endif // CIRCLE_H