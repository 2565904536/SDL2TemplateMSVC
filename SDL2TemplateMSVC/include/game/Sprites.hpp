#ifndef SPRITES_HPP
#define SPRITES_HPP

#include <SDL2/SDL.h>

struct Frame
{
    SDL_Rect box;
    double angle;
    SDL_Point center;
    SDL_RendererFlip flip;
    SDL_Point size;
    int nums;
    float scales;
};

class Sprites
{
public:
    Frame frame;
    Sprites() {};
    Sprites(Frame frame, SDL_Texture *texture) : frame{frame}, texture{texture} {}
    Sprites(Frame frame, SDL_Rect hitBox, SDL_Texture *texture) : frame{frame}, hitBox{hitBox}, texture{texture} {}
    ~Sprites() = default;

    // SDL_Rect frame;

    SDL_Rect hitBox;
    SDL_Texture *texture;
    void draw(SDL_Renderer *renderer) const
    {
        int a = index / frame.size.x;
        int b = index % frame.size.x;
        SDL_Rect src = {b * frame.box.w, a * frame.box.h, frame.box.w, frame.box.h};
        SDL_Rect dst = {frame.box.x + (1 - frame.scales) * frame.center.x, frame.box.y + (1 - frame.scales) * frame.center.y, frame.scales * frame.box.w, frame.scales * frame.box.h};
        SDL_Point cnt = {frame.center.x * frame.scales, frame.center.y * frame.scales};
        SDL_RenderCopyEx(renderer, texture, &src, &dst, frame.angle, &cnt, frame.flip);
    }

    void nextFrame()
    {
        index++;
        int range = frame.nums;
        if (index >= range)
            index = index % range;
    }

private:
    unsigned int index = 0;
};

#endif // SPRITES_HPP