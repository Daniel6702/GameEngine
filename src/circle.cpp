#include "Circle.h"
#include <cmath>

Circle::Circle(int x, int y, int radius, glm::vec3 color, unsigned int segments) 
    : Shape(), radius(radius), segments(segments) {
    setPosition(x, y);
    setColor(color.r, color.g, color.b);

    std::vector<float> vertices;
    vertices.push_back(0.0f); // Center X
    vertices.push_back(0.0f); // Center Y

    float r = 2.0f * static_cast<float>(radius) / static_cast<float>(screenWidth);

    for (unsigned int i = 0; i <= segments; ++i) {
        float angle = 2.0f * M_PI * float(i) / float(segments);
        vertices.push_back(r * cosf(angle)); // x coordinate
        vertices.push_back(r * sinf(angle)); // y coordinate
    }

    setupBuffers(vertices);
}

void Circle::draw(Renderer* renderer) const {
    if (renderer) {
        renderer->drawShape(VAO, segments + 2, GL_TRIANGLE_FAN, getTransformationMatrix(), color);
    }
}
