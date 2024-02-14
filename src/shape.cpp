#include "Shape.h"
#include <iostream>
using namespace std;

Shape::Shape() : VAO(0), VBO(0), position(0.0f, 0.0f), size(1.0f, 1.0f), color(1.0f, 1.0f, 1.0f), angle(0.0f) {
    updateTransformationMatrix();
}

Shape::~Shape() {
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
}

void Shape::setPosition(int x, int y) {
    float xNDC = (2.0f * x) / screenWidth - 1.0f;
    float yNDC = 1.0f - (2.0f * y) / screenHeight;
    position = glm::vec2(xNDC, yNDC);
    updateTransformationMatrix();
}

void Shape::setSize(float width, float height) {
    size = glm::vec2(width, height);
    updateTransformationMatrix();
}

void Shape::setColor(int r, int g, int b) {
    float red = static_cast<float>(r) / 255.0f;
    float green = static_cast<float>(g) / 255.0f;
    float blue = static_cast<float>(b) / 255.0f;
    color = glm::vec3(red, green, blue);
}

void Shape::setAngle(float angleDegrees) {
    angle = angleDegrees;
    updateTransformationMatrix();
}

void Shape::updateTransformationMatrix() {
    transformationMatrix = glm::mat4(1.0f);
    transformationMatrix = glm::translate(transformationMatrix, glm::vec3(position, 0.0f));
    transformationMatrix = glm::rotate(transformationMatrix, glm::radians(angle), glm::vec3(0.0f, 0.0f, 1.0f));
    transformationMatrix = glm::scale(transformationMatrix, glm::vec3(size, 1.0f));
}

glm::mat4 Shape::getTransformationMatrix() const {
    return transformationMatrix;
}

void Shape::setupBuffers(const std::vector<float>& vertices) {
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);

    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(float), &vertices[0], GL_STATIC_DRAW);

    // Assuming every vertex consists of 2 floats (X and Y)
    glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 2 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
}


