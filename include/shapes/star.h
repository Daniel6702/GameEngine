#ifndef STAR_H
#define STAR_H

#include "shape.h"
#include <vector>
#include <glm.hpp>

class Star : public Shape {
public:
    Star(int x, int y, int outerRadius, int innerRadius, glm::vec3 color, unsigned int points = 5);
    void draw() const override;

private:
    int outerRadius, innerRadius;
    unsigned int points;
    void calculateVertices();
};

#endif // STAR_H
