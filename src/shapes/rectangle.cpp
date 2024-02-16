#include "rectangle.h"
#include <cmath>

Rectangle::Rectangle(int x, int y, int width, int height, glm::vec3 color)
    : Shape(), width(width), height(height) {
    setPosition(x, y);
    setColor(color.r, color.g, color.b);
    calculateVertices();
}

void Rectangle::calculateVertices() {
    float w = 2.0f * static_cast<float>(width) / static_cast<float>(Constants::screenWidth);
    float h = 2.0f * static_cast<float>(height) / static_cast<float>(Constants::screenHeight);

    std::vector<float> vertices = {
        0.0f, 0.0f,       
        w,    0.0f,     
        w,    h,         
        0.0f, h           
    };

    item.primitive = GL_TRIANGLE_FAN;
    item.count = 4;
    item.type = 0;

    setupBuffers(vertices);
}

void Rectangle::setWidth(int width) {
    this->width = width;
    calculateVertices();
}

int Rectangle::getWidth() const {
    return width;
}  

void Rectangle::setHeight(int height) {
    this->height = height;
    calculateVertices();
}

int Rectangle::getHeight() const {
    return height;
}

void Rectangle::draw() const {
    RenderQueue::getInstance().submit(item);
}
