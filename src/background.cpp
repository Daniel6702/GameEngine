#include "background.h"

Background::Background(glm::vec3 color) {
    item.color = color;
    item.type = 1;
}

void Background::setBackGroundColor(glm::vec3 color) {
    item.color = color;
}

void Background::draw() const {
    RenderQueue::getInstance().submit(item);
}