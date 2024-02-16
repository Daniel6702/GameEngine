class IInput {
public:
    virtual void keyInput() {}
};

class IEngine {
public:
    virtual void run() = 0;
};

class IGame : public IInput, public IEngine {};

class MyGame : public IGame {
public:
    void run() override {
    }
};

int main(void) {
    MyGame game;
    return 0;
}