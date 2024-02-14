#include "CoreEngine.h"
#include <iostream>
#include <GL/glew.h>

CoreEngine::CoreEngine(int width, int height, const std::string& title)
    : m_game(nullptr),  m_width(width), m_height(height), m_title(title), m_window(nullptr), m_isRunning(false) {
}

CoreEngine::~CoreEngine() {
    if (m_game) {
        // Perform any necessary cleanup for the game
    }

    glfwDestroyWindow(m_window);
    glfwTerminate();
}

bool CoreEngine::init() {
    // Initialize GLFW
    if (!glfwInit()) {
        std::cerr << "Failed to initialize GLFW." << std::endl;
        return false;
    }

    // Create a GLFW window
    m_window = glfwCreateWindow(m_width, m_height, m_title.c_str(), nullptr, nullptr);
    if (!m_window) {
        std::cerr << "Failed to create GLFW window. " << std::endl;
        glfwTerminate();
        return false;
    }

    // Make the window's context current
    glfwMakeContextCurrent(m_window);

    // Initialize GLEW
    glewExperimental = GL_TRUE; // Needed for core profile
    if (GLEW_OK != glewInit()) {
        std::cerr << "Failed to initialize GLEW" << std::endl;
        return -1;
    }

    return true;
}

void CoreEngine::run() {
    if (!m_game) {
        std::cerr << "No game instance has been set." << std::endl;
        return;
    }

    m_game->init(); // Initialize game-specific logic

    while (!glfwWindowShouldClose(m_window)) {
        // Calculate delta time for consistent updating
        float deltaTime = calculateDeltaTime();

        // Update game logic
        m_game->update(deltaTime);

        // Render the scene
        m_game->render();

        // Swap front and back buffers and poll for events
        glfwSwapBuffers(m_window);
        glfwPollEvents();
    }
}

void CoreEngine::setGame(IGame* game) {
    m_game = game;
}

float CoreEngine::calculateDeltaTime() {
    static double lastTime = glfwGetTime();
    double currentTime = glfwGetTime();
    float deltaTime = static_cast<float>(currentTime - lastTime);
    lastTime = currentTime;
    return deltaTime;
}
