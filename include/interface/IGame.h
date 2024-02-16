#ifndef I_GAME_H
#define I_GAME_H

#include "Iinput.h"
#include "IEngine.h"

class IGame : 
    public IInputHandler, 
    public IEngine {};

#endif
