#ifndef BACKGROUND_H
#define BACKGROUND_H

#include <GL/glew.h>
#include <glm.hpp>
#include <vector>
#include "render_queue.h"
#include "render_item.h"

class Background {
    public:
        Background(glm::vec3 color);
        void setBackGroundColor(glm::vec3 color);
        void draw() const;

    protected:
        RenderItem item;
};

#endif // BACKGROUND_H