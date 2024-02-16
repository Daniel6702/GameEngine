#include "Circle.h"
#include <cmath>

Circle::Circle(int x, int y, int radius, glm::vec3 color, unsigned int segments) 
    : Shape(), radius(radius), segments(segments) {
    setPosition(x, y);
    setColor(color.r, color.g, color.b);
    calculateVertices();
}

void Circle::calculateVertices() {
    std::vector<float> vertices;
    vertices.push_back(0.0f); // Center X
    vertices.push_back(0.0f); // Center Y

    float r = 2.0f * static_cast<float>(radius) / static_cast<float>(Constants::screenWidth);

    for (unsigned int i = 0; i <= segments; ++i) {
        float angle = 2.0f * M_PI * float(i) / float(segments);
        vertices.push_back(r * cosf(angle) / Constants::aspectRatio); 
        vertices.push_back(r * sinf(angle)); 
    }

    item.primitive = GL_TRIANGLE_FAN;
    item.count = segments + 2;
    item.type = 0; 

    setupBuffers(vertices);
}

void Circle::setRadius(int radius) {
    this->radius = radius;
    calculateVertices();
}

int Circle::getRadius() const {
    return radius;
}

void Circle::setSegments(unsigned int segments) {
    this->segments = segments;
    calculateVertices();
}

void Circle::draw() const {
    RenderQueue::getInstance().submit(item);
}
