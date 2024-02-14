#ifndef I_GAME_H
#define I_GAME_H

class IGame {
public:
    virtual ~IGame() = default;
    virtual void init() = 0;
    virtual void update(float deltaTime) = 0;
    virtual void render() = 0;
};

#endif
