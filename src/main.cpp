#include "CoreEngine.h"
#include "MyGame.h" 
#include <iostream>

int main() {
    CoreEngine engine(1200, 600, "Game");
    MyGame game;

    if (engine.init()) {
        engine.setGame(&game);
        engine.run();
    }

    return 0;
}