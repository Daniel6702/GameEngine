#include "IGame.h"
#include "rectangle.h"
#include "circle.h"
#include "renderer.h"
#include <GLFW/glfw3.h>

class MyGame : public IGame {
public:
    MyGame() : circle(nullptr), renderer(nullptr) {}

    ~MyGame() {
        delete circle;
        delete renderer;
    }

    void init() override {
        // Initialize your shapes
        circle = new Circle(600, 300, 200, glm::vec3(255, 255, 0));
        renderer = new Renderer(1200, 600);
    }

    void update(float /*deltaTime*/) override {
        // Update logic here
    }

    void render() override {
        // Render your shapes
        if (circle) circle->draw(renderer);
    }

private:
    Circle* circle;
    Renderer* renderer;
};
