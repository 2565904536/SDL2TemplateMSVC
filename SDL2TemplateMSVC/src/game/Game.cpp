#include <game/Game.hpp>
#include <SDL2/SDL_image.h>

Game::Game(const char *title, int x, int y, int w, int h, Uint32 flags)
{
    this->window = SDL_CreateWindow(title, x, y, w, h, flags);
    this->renderer = SDL_CreateRenderer(this->window, -1, SDL_RENDERER_ACCELERATED);
}

Game::~Game()
{
    SDL_DestroyWindow(this->window);
    SDL_DestroyRenderer(this->renderer);
}
