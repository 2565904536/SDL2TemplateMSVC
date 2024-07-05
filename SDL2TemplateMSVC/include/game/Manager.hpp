#ifndef MANAGER_HPP
#define MANAGER_HPP

#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
// #include<SDL2/SDL_ttf.h>
#include <map>
#include <vector>
#include <string_view>

class Manager
{
private:
    std::map<std::string_view, SDL_Texture *> textures;

public:
    Manager() = default;
    ~Manager();
    SDL_Texture *LoadTex(std::string_view name, std::string_view path, SDL_Renderer *renderer);
    SDL_Surface *LoadSur(std::string_view path);
    SDL_Texture *GetTex(std::string_view name);
    std::vector<SDL_Surface *> surfaces;
    void DeleteTex();
};

#endif