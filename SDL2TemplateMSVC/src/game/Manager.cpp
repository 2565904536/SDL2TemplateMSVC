#include <game/Manager.hpp>
#include <stdexcept>

Manager::~Manager()
{
    for (auto &&[name, tex] : textures)
    {
        SDL_DestroyTexture(tex);
    }
    for (auto &&sur : surfaces)
    {
        SDL_FreeSurface(sur);
    }
}

SDL_Texture *Manager::LoadTex(std::string_view name, std::string_view path, SDL_Renderer *renderer)
{
    SDL_Texture *tex = IMG_LoadTexture(renderer, path.data());
    if (!tex)
        throw std::runtime_error("Failed to load texture: " + std::string(path) + "," + std::string(IMG_GetError()));
    textures[name] = tex;
    return tex;
}

SDL_Surface *Manager::LoadSur(std::string_view path)
{
    SDL_Surface *sur = IMG_Load(path.data());
    surfaces.push_back(sur);
    return sur;
}

SDL_Texture *Manager::GetTex(std::string_view name)
{
    return textures[name];
}
