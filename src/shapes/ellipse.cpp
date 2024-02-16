#include "ellipse.h"
#include <cmath>

Ellipse::Ellipse(int x, int y, int radiusX, int radiusY, glm::vec3 color, unsigned int segments)
    : Shape(), radiusX(radiusX), radiusY(radiusY), segments(segments) {
    setPosition(x, y);
    setColor(color.r, color.g, color.b);
    calculateVertices();
}

void Ellipse::calculateVertices() {
    float rX = 2.0f * static_cast<float>(radiusX) / static_cast<float>(Constants::screenWidth);
    float rY = 2.0f * static_cast<float>(radiusY) / static_cast<float>(Constants::screenHeight);
    
    std::vector<float> vertices;
    for (unsigned int i = 0; i <= segments; ++i) {
        float angle = 2.0f * M_PI * float(i) / float(segments);
        vertices.push_back(rX * cosf(angle));
        vertices.push_back(rY * sinf(angle));
    }

    item.primitive = GL_TRIANGLE_FAN;
    item.count = segments;
    item.type = 0;

    setupBuffers(vertices);
}

void Ellipse::setRadiusX(int radiusX) {
    this->radiusX = radiusX;
    calculateVertices();
}

int Ellipse::getRadiusX() const {
    return radiusX;
}

void Ellipse::setRadiusY(int radiusY) {
    this->radiusY = radiusY;
    calculateVertices();
}

int Ellipse::getRadiusY() const {
    return radiusY;
}

void Ellipse::setSegments(unsigned int segments) {
    this->segments = segments;
    calculateVertices();
}

void Ellipse::draw() const {
    RenderQueue::getInstance().submit(item);
}
