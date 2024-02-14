#ifndef RENDERQUEUE_H
#define RENDERQUEUE_H

#include <map>
#include <vector>
#include "render_item.h" 
#include "renderer.h"

class RenderQueue {
public:
    static RenderQueue& getInstance();

    RenderQueue(const RenderQueue&) = delete;
    void operator=(const RenderQueue&) = delete;
    void submit(const RenderItem& item);
    void processQueue(Renderer* renderer);

private:
    RenderQueue();

    std::map<int, std::vector<RenderItem>> queue;
};

#endif // RENDERQUEUE_H
