#include "input_handler.h"

IGame* InputHandler::m_game = nullptr;

void InputHandler::init(GLFWwindow* window, IGame* game) {
    m_game = game;
    glfwSetKeyCallback(window, keyCallback);
    glfwSetCursorPosCallback(window, mouseMoveCallback);
    glfwSetMouseButtonCallback(window, handleMouseInput);
}

void InputHandler::keyCallback(GLFWwindow* window, int key, int scancode, int action, int mods) {
    if (m_game) {
        if (action == GLFW_PRESS) {
            keyPressed(key, mods);
        } else if (action == GLFW_RELEASE) {
            keyReleased(key, mods);
        }
    }
}

void InputHandler::keyPressed(int key, int mods) {
    std::string keyName = "UNKNOWN";
    if (m_keyMap.find(key) != m_keyMap.end()) {
        keyName = m_keyMap[key];
    }
    m_game->keyPressed(keyName, mods);
}

void InputHandler::keyReleased(int key, int mods) {
    std::string keyName = "UNKNOWN";
    if (m_keyMap.find(key) != m_keyMap.end()) {
        keyName = m_keyMap[key];
    }
    m_game->keyReleased(keyName, mods);
}

void InputHandler::mouseMoveCallback(GLFWwindow* window, double xpos, double ypos) {
    if (m_game) {
        m_game->handleMouseMove(xpos, ypos);
    }
}

void InputHandler::handleMouseInput(GLFWwindow* window, int button, int action, int mods) {
    if (m_game) {
        m_game->handleMouseInput(button, action, mods);
    }
}

std::unordered_map<int, std::string> InputHandler::m_keyMap = {
    {GLFW_KEY_A, "a"},
    {GLFW_KEY_B, "b"},
    {GLFW_KEY_C, "c"},
    {GLFW_KEY_D, "d"},
    {GLFW_KEY_E, "e"},
    {GLFW_KEY_F, "f"},
    {GLFW_KEY_G, "g"},
    {GLFW_KEY_H, "h"},
    {GLFW_KEY_I, "i"},
    {GLFW_KEY_J, "j"},
    {GLFW_KEY_K, "k"},
    {GLFW_KEY_L, "l"},
    {GLFW_KEY_M, "m"},
    {GLFW_KEY_N, "n"},
    {GLFW_KEY_O, "o"},
    {GLFW_KEY_P, "p"},
    {GLFW_KEY_Q, "q"},
    {GLFW_KEY_R, "r"},
    {GLFW_KEY_S, "s"},
    {GLFW_KEY_T, "t"},
    {GLFW_KEY_U, "u"},
    {GLFW_KEY_V, "v"},
    {GLFW_KEY_W, "w"},
    {GLFW_KEY_X, "x"},
    {GLFW_KEY_Y, "y"},
    {GLFW_KEY_Z, "z"},
    {GLFW_KEY_0, "0"},
    {GLFW_KEY_1, "1"},
    {GLFW_KEY_2, "2"},
    {GLFW_KEY_3, "3"},
    {GLFW_KEY_4, "4"},
    {GLFW_KEY_5, "5"},
    {GLFW_KEY_6, "6"},
    {GLFW_KEY_7, "7"},
    {GLFW_KEY_8, "8"},
    {GLFW_KEY_9, "9"},
    {GLFW_KEY_SPACE, "space"},
    {GLFW_KEY_LEFT_SHIFT, "left shift"},
    {GLFW_KEY_RIGHT_SHIFT, "right shift"},
    {GLFW_KEY_LEFT_CONTROL, "left control"},
    {GLFW_KEY_RIGHT_CONTROL, "right control"},
    {GLFW_KEY_LEFT_ALT, "left alt"},
    {GLFW_KEY_RIGHT_ALT, "right alt"},
    {GLFW_KEY_ENTER, "enter"},
    {GLFW_KEY_BACKSPACE, "backspace"},
    {GLFW_KEY_TAB, "tab"},
    {GLFW_KEY_ESCAPE, "escape"},
    {GLFW_KEY_UP, "up"},
    {GLFW_KEY_DOWN, "down"},
    {GLFW_KEY_LEFT, "left"},
    {GLFW_KEY_RIGHT, "right"},
    {GLFW_KEY_F1, "f1"},
    {GLFW_KEY_F2, "f2"},
    {GLFW_KEY_F3, "f3"},
    {GLFW_KEY_F4, "f4"},
    {GLFW_KEY_F5, "f5"},
    {GLFW_KEY_F6, "f6"},
    {GLFW_KEY_F7, "f7"},
    {GLFW_KEY_F8, "f8"},
    {GLFW_KEY_F9, "f9"},
    {GLFW_KEY_F10, "f10"},
    {GLFW_KEY_F11, "f11"},
    {GLFW_KEY_F12, "f12"},
    {GLFW_KEY_KP_0, "keypad 0"},
    {GLFW_KEY_KP_1, "keypad 1"},
    {GLFW_KEY_KP_2, "keypad 2"},
    {GLFW_KEY_KP_3, "keypad 3"},
    {GLFW_KEY_KP_4, "keypad 4"},
    {GLFW_KEY_KP_5, "keypad 5"},
    {GLFW_KEY_KP_6, "keypad 6"},
    {GLFW_KEY_KP_7, "keypad 7"},
    {GLFW_KEY_KP_8, "keypad 8"},
    {GLFW_KEY_KP_9, "keypad 9"},
    {GLFW_KEY_KP_ADD, "keypad +"},
    {GLFW_KEY_KP_SUBTRACT, "keypad -"},
    {GLFW_KEY_KP_MULTIPLY, "keypad *"},
    {GLFW_KEY_KP_DIVIDE, "keypad /"},
    {GLFW_KEY_KP_DECIMAL, "keypad ."},
    {GLFW_KEY_KP_ENTER, "keypad enter"},
    {GLFW_KEY_KP_EQUAL, "keypad ="},
    {GLFW_KEY_LEFT_BRACKET, "["},
    {GLFW_KEY_RIGHT_BRACKET, "]"},
    {GLFW_KEY_SEMICOLON, ";"},
    {GLFW_KEY_COMMA, ","},
    {GLFW_KEY_PERIOD, "."},
    {GLFW_KEY_APOSTROPHE, "'"},
    {GLFW_KEY_SLASH, "/"},
    {GLFW_KEY_BACKSLASH, "\\"},
    {GLFW_KEY_MINUS, "-"},
    {GLFW_KEY_EQUAL, "="},
    {GLFW_KEY_GRAVE_ACCENT, "`"},
    {GLFW_KEY_CAPS_LOCK, "caps lock"},
    {GLFW_KEY_SCROLL_LOCK, "scroll lock"},
    {GLFW_KEY_NUM_LOCK, "num lock"},
    {GLFW_KEY_PRINT_SCREEN, "print screen"},
    {GLFW_KEY_PAUSE, "pause"},
    {GLFW_KEY_INSERT, "insert"},
    {GLFW_KEY_DELETE, "delete"},
    {GLFW_KEY_HOME, "home"},
    {GLFW_KEY_END, "end"},
    {GLFW_KEY_PAGE_UP, "page up"},
    {GLFW_KEY_PAGE_DOWN, "page down"},
    {GLFW_KEY_MENU, "menu"},
    {GLFW_KEY_UNKNOWN, "unknown"}
};