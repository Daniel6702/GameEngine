#ifndef INPUT_HANDLER_H
#define INPUT_HANDLER_H

#include <GLFW/glfw3.h>
#include "IGame.h"
#include <unordered_map>
#include <string>

class InputHandler {
public:
    void init(GLFWwindow* window, IGame* game);
    static void keyCallback(GLFWwindow* window, int key, int scancode, int action, int mods);
    static void keyPressed(int key, int mods);
    static void keyReleased(int key, int mods);
    static void mouseMoveCallback(GLFWwindow* window, double xpos, double ypos);
    static void handleMouseInput(GLFWwindow* window, int button, int action, int mods);
private:
    static IGame* m_game;
    static std::unordered_map<int, std::string> m_keyMap;
};

#endif
