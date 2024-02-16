#include "Shape.h"
#include <iostream>
using namespace std;

Shape::Shape(int layer, float angleDegrees) : position(0.0f, 0.0f), angle(0.0f) {
    item.VAO = 0; 
    item.VBO = 0;
    item.layer = layer;
    item.color = glm::vec3(1.0f, 1.0f, 1.0f);
    angle = angleDegrees;
    updateTransformationMatrix();
}

Shape::~Shape() {
    glDeleteVertexArrays(1, &item.VAO);
    glDeleteBuffers(1, &item.VBO);
}

void Shape::setPosition(int x, int y) {
    float xNDC = (2.0f * x) / Constants::screenWidth - 1.0f;
    float yNDC = 1.0f - (2.0f * y) / Constants::screenHeight;
    position = glm::vec2(xNDC, yNDC);
    updateTransformationMatrix();
}

void Shape::move(float dx, float dy) {
    position.x += dx;
    position.y += dy;
    updateTransformationMatrix();
}

glm::vec2 Shape::getPosition() const {
    int x = static_cast<int>((position.x + 1.0f) * Constants::screenWidth / 2.0f + 0.5f);
    int y = static_cast<int>((1.0f - position.y) * Constants::screenHeight / 2.0f + 0.5f);
    return glm::vec2(x, y);
}

void Shape::setColor(int r, int g, int b) {
    float red = static_cast<float>(r) / 255.0f;
    float green = static_cast<float>(g) / 255.0f;
    float blue = static_cast<float>(b) / 255.0f;
    item.color = glm::vec3(red, green, blue);
}

void Shape::setAngle(float angleDegrees) {
    angle = angleDegrees;
    updateTransformationMatrix();
}

void Shape::updateTransformationMatrix() {
    item.transformationMatrix = glm::mat4(1.0f);
    item.transformationMatrix = glm::translate(item.transformationMatrix, glm::vec3(position, 0.0f));
    item.transformationMatrix = glm::rotate(item.transformationMatrix, glm::radians(angle), glm::vec3(0.0f, 0.0f, 1.0f));
}

glm::mat4 Shape::getTransformationMatrix() const {
    return item.transformationMatrix;
}

void Shape::setupBuffers(const std::vector<float>& vertices) {
    glGenVertexArrays(1, &item.VAO);
    glGenBuffers(1, &item.VBO);

    glBindVertexArray(item.VAO);
    glBindBuffer(GL_ARRAY_BUFFER, item.VBO);
    glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(float), &vertices[0], GL_STATIC_DRAW);

    // Assuming every vertex consists of 2 floats (X and Y)
    glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 2 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
}




