#ifndef CIRCLE_H
#define CIRCLE_H

#include "Shape.h"

class Circle : public Shape {
public:
    Circle(int x, int y, int radius, glm::vec3 color = glm::vec3(255, 255, 255), unsigned int segments = 36);
    void draw() const override;

private:
    int radius;
    unsigned int segments;
};

#endif // CIRCLE_H