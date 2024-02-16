#include "Star.h"
#include <cmath>

Star::Star(int x, int y, int outerRadius, int innerRadius, glm::vec3 color, unsigned int points)
    : Shape(), outerRadius(outerRadius), innerRadius(innerRadius), points(points) {
    setPosition(x, y);
    setColor(color.r, color.g, color.b);
    calculateVertices();
}

void Star::calculateVertices() {
    std::vector<float> vertices;
    for (unsigned int i = 0; i < points; ++i) {
        // Calculate angles for the outer and inner vertices
        float outerAngle = 2.0f * M_PI * float(i) / float(points);
        float nextOuterAngle = 2.0f * M_PI * float(i + 1) / float(points);
        float innerAngle = outerAngle + M_PI / float(points);

        // Center vertex for the triangle fan
        vertices.push_back(0.0f); // x coordinate
        vertices.push_back(0.0f); // y coordinate

        // Outer vertex
        vertices.push_back(outerRadius * cosf(outerAngle) / Constants::screenWidth);
        vertices.push_back(outerRadius * sinf(outerAngle) / Constants::screenHeight);

        // Inner vertex
        vertices.push_back(innerRadius * cosf(innerAngle) / Constants::screenWidth);
        vertices.push_back(innerRadius * sinf(innerAngle) / Constants::screenHeight);

        // Add the next outer vertex if it's not the last point
        if (i < points - 1) {
            vertices.push_back(outerRadius * cosf(nextOuterAngle) / Constants::screenWidth);
            vertices.push_back(outerRadius * sinf(nextOuterAngle) / Constants::screenHeight);
        }
    }

    // Duplicate the vertices for the first outer and inner points at the end to close the star
    vertices.push_back(outerRadius * cosf(0) / Constants::screenWidth);
    vertices.push_back(outerRadius * sinf(0) / Constants::screenHeight);
    vertices.push_back(innerRadius * cosf(M_PI / float(points)) / Constants::screenWidth);
    vertices.push_back(innerRadius * sinf(M_PI / float(points)) / Constants::screenHeight);

    item.primitive = GL_TRIANGLE_FAN;
    item.count = vertices.size() / 2; // 2 coordinates per vertex
    item.type = 0;

    setupBuffers(vertices);
}

void Star::draw() const {
    RenderQueue::getInstance().submit(item);
}
