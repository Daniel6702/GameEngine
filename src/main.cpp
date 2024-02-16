#include "CoreEngine.h"
#include "MyGame.h" 
#include <iostream>

int main() {
    CoreEngine engine("Game");
    MyGame game;

    if (engine.init(&game)) {
        engine.run();
    }

    return 0;
}