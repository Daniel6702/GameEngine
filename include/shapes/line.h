#ifndef LINE_H
#define LINE_H

#include "shape.h"
#include <glm.hpp>

class Line : public Shape {
public:
    Line(const glm::vec2& start, const glm::vec2& end, float width, glm::vec3 color);
    void draw() const override;
    void setStart(const glm::vec2& start);
    void setEnd(const glm::vec2& end);
    void setWidth(float width);
    const glm::vec2& getStart() const;
    const glm::vec2& getEnd() const;
    float getWidth() const;

private:
    glm::vec2 start, end;
    float width;
    void calculateVertices();
};

#endif // LINE_H
