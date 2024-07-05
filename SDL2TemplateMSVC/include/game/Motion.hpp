#ifndef MOTION_HPP
#define MOTION_HPP

#include <SDL2/SDL.h>

class Motion
{

public:
    struct vec2f
    {
        float a;
        float b;
    };
    vec2f position;
    vec2f velocity;
    vec2f acceleration;

    Motion() = default;
    ~Motion() = default;

    /// @brief 把浮点坐标转换成窗口上像素位置。
    /// @return {position1, position2}
    virtual SDL_Point mapToScreenPixel() = 0;
    virtual void updateMotion(float fps) = 0;
};

#endif // MOTION_HPP