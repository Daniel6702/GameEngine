#include "triangle.h"
#include <cmath>

Triangle::Triangle(const glm::vec2& point1, const glm::vec2& point2, const glm::vec2& point3, glm::vec3 color) {
    points[0] = point1;
    points[1] = point2;
    points[2] = point3;
    setColor(color.r, color.g, color.b);
    calculateVertices();
}

void Triangle::calculateVertices() {
    std::vector<float> vertices;
    for (int i = 0; i < 3; ++i) {
        float xNDC = (2.0f * points[i].x) / Constants::screenWidth - 1.0f;
        float yNDC = 1.0f - (2.0f * points[i].y) / Constants::screenHeight;
        vertices.push_back(xNDC);
        vertices.push_back(yNDC);
    }

    item.primitive = GL_TRIANGLES;
    item.count = 3;
    item.type = 0;

    setupBuffers(vertices);
}

void Triangle::draw() const {
    RenderQueue::getInstance().submit(item);
}
