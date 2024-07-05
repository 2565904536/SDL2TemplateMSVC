#define SDL_MAIN_HANDLED 

#include <print>
#include <memory>
#include <game/Tool.hpp>
#include <instance.hpp>
#include <SDL2/SDL_image.h>
#include <SDL2/SDL_ttf.h>


int main(int argc, char *argv[])
{
    SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER);
    IMG_Init(IMG_INIT_PNG | IMG_INIT_JPG);
    TTF_Init();

    gameInstance game("Gold Miner", 100, 100, 1280, 720, false);
    game.Init();

    do
    {
        game.Loop();

    } while (game.instanceState == gameInstance::State::LOOP);

    game.Clean();

    TTF_Quit();
    IMG_Quit();
    SDL_Quit();

    return 0;
}