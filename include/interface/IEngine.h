#ifndef IENGINE_H
#define IENGINE_H

class IEngine {
    public:
        virtual ~IEngine() = default;
        virtual void init() = 0;
        virtual void update(float deltaTime) = 0;
        virtual void render() = 0;
};

#endif // IENGINE_H