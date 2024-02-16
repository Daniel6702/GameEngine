#include "IGame.h"
#include "background.h"
#include <GLFW/glfw3.h>
#include "shapes_lib.h"
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

    glm::vec2 getPosition() const {
        return circle->getPosition();
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
        rectangle = new Rectangle(100, 200, 200, 100, glm::vec3(255, 0, 255));
        ellipse = new Ellipse(500, 300, 100, 50, glm::vec3(0, 255, 255));
        triangle = new Triangle(glm::vec2(800, 100), glm::vec2(900, 200), glm::vec2(700, 200), glm::vec3(255, 255, 0));
        line = new Line(glm::vec2(100, 400), glm::vec2(200, 500), 10, glm::vec3(255, 255, 255));
        star = new Star(1000, 400, 100, 50, glm::vec3(255, 0, 0), 5);
        for (int i = 0; i < 1; ++i) {
            int x = rand() % SCREEN_WIDTH;
            int y = rand() % SCREEN_HEIGHT;
            glm::vec3 color(rand() % 256, rand() % 256, rand() % 256);
            glm::vec2 velocity(rand() % 200 - 100, rand() % 200 - 100); // Random velocity
            balls.push_back(new Ball(x, y, 50, color, velocity));
        }
        
    }

    void update(float deltaTime) override {
        
        for (auto* ball : balls) {
            //cout << ball->getPosition().x << " " << ball->getPosition().y << endl;
            ball->update(deltaTime*0.01f);
        }
    }

    void render() override {
        background->draw();
        rectangle->draw();
        ellipse->draw();
        triangle->draw();
        line->draw();
        star->draw();
        for (auto* ball : balls) {
            ball->draw();
        }
    }

    void keyPressed(string key, int mods) {
        cout << "Key Pressed: " << key << " " << mods << endl;
    };

private:
    std::vector<Ball*> balls;
    //Circle* circle;
    Rectangle* rectangle;
    Ellipse* ellipse;
    Triangle* triangle;
    Line* line;
    Star* star;
    Background* background;
};

