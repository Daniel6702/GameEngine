#include "IGame.h"
#include "circle.h"
#include "background.h"
#include <GLFW/glfw3.h>
#include <iostream>
using namespace std;

#define SCREEN_WIDTH 1200
#define SCREEN_HEIGHT 600

class Ball {
public:
    Ball(int x, int y, int radius, glm::vec3 color, glm::vec2 velocity)
    : circle(new Circle(x, y, radius, color,36)), velocity(velocity) {}

    ~Ball() {
        delete circle;
    }

    void update(float deltaTime) {
        circle->move(velocity.x * deltaTime, velocity.y * deltaTime);
        glm::vec2 pos = circle->getPosition();
        // Boundary check and bounce
        if (pos.x < 0 || pos.x > SCREEN_WIDTH) {
            velocity.x = -velocity.x;
        }
        if (pos.y < 0 || pos.y > SCREEN_HEIGHT) {
            velocity.y = -velocity.y;
        }
    }

    void draw() {
        circle->draw();
    }

private:
    Circle* circle;
    glm::vec2 velocity;
};

class MyGame : public IGame {
public:
    MyGame() {}

    ~MyGame() {
        for (auto* b : balls) {
            delete b;
        }
    }

    void init() override {
        background = new Background(glm::vec3(40, 40, 40));
        for (int i = 0; i < 10000; ++i) {
            int x = rand() % SCREEN_WIDTH;
            int y = rand() % SCREEN_HEIGHT;
            glm::vec3 color(rand() % 256, rand() % 256, rand() % 256);
            glm::vec2 velocity(rand() % 200 - 100, rand() % 200 - 100); // Random velocity
            balls.push_back(new Ball(x, y, 50, color, velocity));
        }
    }

    void update(float deltaTime) override {
        for (auto* ball : balls) {
            ball->update(deltaTime*0.025f);
        }
    }

    void render() override {
        background->draw();
        for (auto* ball : balls) {
            ball->draw();
        }
    }

private:
    std::vector<Ball*> balls;
    Background* background;
};

