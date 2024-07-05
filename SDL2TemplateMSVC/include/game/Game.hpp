#ifndef GAME_HPP
#define GAME_HPP
#include <SDL2/SDL.h>

class Game
{
public:
    Game(const char *title, int x, int y, int w, int h, Uint32 flags);
    ~Game();

    SDL_Renderer *renderer;
    virtual void Init() = 0;
    virtual void Loop() = 0;
    virtual void Clean() = 0;
    SDL_Event event;

private:
    SDL_Window *window;
};
#endif // GAME_HPP