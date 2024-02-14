#include "render_queue.h"

// Singleton getInstance method
RenderQueue& RenderQueue::getInstance() {
    static RenderQueue instance;
    return instance;
}

// Private constructor definition (empty as this is a singleton)
RenderQueue::RenderQueue() {
    // Initialization code if needed
}

// Submits a RenderItem to the queue
void RenderQueue::submit(const RenderItem& item) {
    queue[item.layer].push_back(item);
}

// Processes and renders all items in the queue
void RenderQueue::processQueue(Renderer* renderer) {
    for (auto& layer : queue) {
        for (auto& item : layer.second) {
            if (item.type == 0) {//shape type
                renderer->drawShape(item.VAO, item.count, item.primitive, item.transformationMatrix, item.color);
            } else if (item.type == 1) {//background
                renderer->background(item.color);
            }
        }
    }
    queue.clear();
}
