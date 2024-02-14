#ifndef RECTANGLE_H
#define RECTANGLE_H

#include "Shape.h"

class Rectangle : public Shape {
public:
    Rectangle(float width, float height);
    void draw(Renderer* renderer) const override;

private:
    float width, height;
};

#endif // RECTANGLE_H
