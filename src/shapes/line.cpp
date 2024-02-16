#include "Line.h"
#include <GL/gl.h> // Make sure to include the correct OpenGL header

Line::Line(const glm::vec2& start, const glm::vec2& end, float width, glm::vec3 color) 
    : start(start), end(end), width(width) {
    setColor(color.r, color.g, color.b);
    calculateVertices();
}

void Line::calculateVertices() {
    std::vector<float> vertices = {
        (2.0f * start.x) / Constants::screenWidth - 1.0f,
        1.0f - (2.0f * start.y) / Constants::screenHeight,
        (2.0f * end.x) / Constants::screenWidth - 1.0f,
        1.0f - (2.0f * end.y) / Constants::screenHeight
    };

    item.primitive = GL_LINES;
    item.count = width;
    item.type = 2; //line

    setupBuffers(vertices);
}

void Line::setStart(const glm::vec2& start) {
    this->start = start;
    calculateVertices();
}

const glm::vec2& Line::getStart() const {
    return start;
}

void Line::setEnd(const glm::vec2& end) {
    this->end = end;
    calculateVertices();
}

const glm::vec2& Line::getEnd() const {
    return end;
}

void Line::setWidth(float width) {
    this->width = width;
    calculateVertices();
}

float Line::getWidth() const {
    return width;
}


void Line::draw() const {
    RenderQueue::getInstance().submit(item);
}
