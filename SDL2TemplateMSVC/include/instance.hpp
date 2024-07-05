#ifndef GAME_INSTANCE_HPP
#define GAME_INSTANCE_HPP

#include <game/Game.hpp>
#include <game/Sprites.hpp>
#include <game/Motion.hpp>
#include <game/Manager.hpp>

#include <random>
class Gold : public Sprites, public Motion
{

public:
    Gold();
    Gold(const vec2f &position, SDL_Texture *texture, SDL_Point size, int frameNums, double angle);
    SDL_Point mapToScreenPixel() override;
    void updateMotion(float fps) override;
    enum class State
    {
        IDLE,
        CATCH,
        DEAD
    } state = State::IDLE;
};

typedef Gold GoldMiner;

class Hook : public Sprites, public Motion
{
public:
    Hook(const vec2f &origin, const vec2f &position, SDL_Texture *texture, const SDL_Point &size);
    SDL_Point mapToScreenPixel() override;
    void updateMotion(float fps) override;

    enum class State
    {
        WAIT,
        RELEASE,
        RETRACT
    } state = State::WAIT;
    vec2f origin;
};

class gameInstance : public Game
{
public:
    gameInstance(const char *title, int x, int y, int w, int h, Uint32 flags);
    ~gameInstance() = default;
    void Init() override;
    void Loop() override;
    void Clean() override;
    enum class State
    {
        PAUSED,
        RUNNING,
        EXIT,
        LOOP,
        INIT,
        RESET
    };
    State GameState, instanceState;

    Manager manager;
    Gold background;
    Gold gameBegin;
    Gold *gold[2];
    GoldMiner *goldMiner;
    Hook *hook;

    Uint64 lastTime;
    std::default_random_engine randomEngine;
};

#endif