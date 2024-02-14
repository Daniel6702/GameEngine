#ifndef CORE_ENGINE_H
#define CORE_ENGINE_H

#include "IGame.h"
#include <GLFW/glfw3.h>
#include <string>
#include "renderer.h"
#include "render_queue.h"

class CoreEngine {
public:
    CoreEngine(int width, int height, const std::string& title);
    ~CoreEngine();

    bool init();
    void run();
    float calculateDeltaTime();
    void setGame(IGame* game);

private:
    IGame* m_game; // Pointer to game logic
    int m_width;
    int m_height;
    std::string m_title;
    GLFWwindow* m_window;
    bool m_isRunning;
    Renderer* renderer;
};

#endif
