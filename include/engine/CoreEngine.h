#ifndef CORE_ENGINE_H
#define CORE_ENGINE_H

#include "IGame.h"
#include <GLFW/glfw3.h>
#include <string>
#include "renderer.h"
#include "render_queue.h"
#include "constants.h"
#include "input_handler.h"
#include "audio_system.h"

class CoreEngine {
public:
    CoreEngine(const std::string& title);
    ~CoreEngine();

    bool init(IGame* game);
    void run();
    float calculateDeltaTime();

private:
    IGame* m_game; // Pointer to game logic
    std::string m_title;
    GLFWwindow* m_window;
    bool m_isRunning;
    Renderer* renderer;
    InputHandler m_inputHandler;
};

#endif
