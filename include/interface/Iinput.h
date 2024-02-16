#ifndef I_INPUT_HANDLER_H
#define I_INPUT_HANDLER_H

#include <string>

class IInputHandler {
public:
    virtual ~IInputHandler() = default;
    virtual void keyPressed(std::string key, int mods) {};
    virtual void keyReleased(std::string key, int mods) {};
    virtual void handleMouseMove(double xpos, double ypos) {};
    virtual void handleMouseInput(int button, int action, int mods) {};
};

#endif