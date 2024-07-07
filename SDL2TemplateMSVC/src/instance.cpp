#include <instance.hpp>
#include <print>
#include <cmath>

gameInstance::gameInstance(const char *title, int x, int y, int w, int h, Uint32 flags) : Game(title, x, y, w, h, flags) { instanceState = State::INIT; }

Uint64 frequency = SDL_GetPerformanceFrequency();
std::uniform_real_distribution<float> randomf(0.0f, 1.0f);
bool isSpritesHit(const Sprites &A, const Sprites &B);

bool showBox = false;
void gameInstance::Init()
{

    lastTime = SDL_GetPerformanceCounter();
    randomEngine.seed(lastTime);
    GameState = State::INIT;
    if (instanceState != State::LOOP)
    {
        manager.LoadTex("backGround", "images/GolderBack.png", renderer);
        manager.LoadTex("Begin", "images/Begin.png", renderer);
        manager.LoadTex("Gold", "images/GolderBlock.png", renderer);
        manager.LoadTex("Hook", "images/GolderTool.png", renderer);
        manager.LoadTex("GoldMiner", "images/GolderMan.png", renderer);

        background.position = {640.0, 360.0};
        background.frame = {
            {0, 0, 1280, 720},
            0.0,
            {640, 360},
            SDL_FLIP_NONE,
            {1, 1},
            1,
            1.0};
        background.texture = manager.GetTex("backGround");
        background.hitBox = {background.frame.box.x + 50, background.frame.box.y, background.frame.box.w - 100, background.frame.box.h - 100};

        gameBegin.position = background.position;
        SDL_QueryTexture(manager.GetTex("Begin"), nullptr, nullptr, &gameBegin.frame.box.w, &gameBegin.frame.box.h);
        gameBegin.frame.box.x = background.frame.box.x + background.frame.box.w / 2 - gameBegin.frame.box.w / 2;
        gameBegin.frame.box.y = background.frame.box.y + background.frame.box.h / 2 - gameBegin.frame.box.h / 2;
        gameBegin.frame.angle = 0.0;
        gameBegin.frame.center = {gameBegin.frame.box.w / 2, gameBegin.frame.box.h / 2};
        gameBegin.frame.flip = SDL_FLIP_NONE;
        gameBegin.frame.size = {1, 1};
        gameBegin.frame.nums = 1;
        gameBegin.frame.scales = 2.0;
        gameBegin.hitBox = {0, 0, 0, 0};
        gameBegin.texture = manager.GetTex("Begin");
        std::println("按空格开始或暂停，按h出钩，按r重置，按esc退出，按b开关碰撞箱显示");
    }

    goldMiner = new GoldMiner({background.position.a, background.position.b - 300}, manager.GetTex("GoldMiner"), {2, 1}, 2, 0.0);

    for (int i = 0; i < 3; i++)
    {
        gold.push_back(new Gold({background.frame.box.w * (0.1f + 0.8f * randomf(randomEngine)), background.frame.box.h * (0.25f + 0.7f * randomf(randomEngine))}, manager.GetTex("Gold"), {1, 1}, 1, 360 * randomf(randomEngine)));
        gold[i]->frame.scales = 0.2f + 0.8f * randomf(randomEngine);
        gold[i]->hitBox = {static_cast<int>(gold[i]->frame.center.x * (1 - gold[i]->frame.scales)), static_cast<int>(gold[i]->frame.center.y * (1 - gold[i]->frame.scales)), static_cast<int>(gold[i]->hitBox.w * gold[i]->frame.scales), static_cast<int>(gold[i]->hitBox.h * gold[i]->frame.scales)};
    }

    hook = new Hook(goldMiner->position, {10, 0}, manager.GetTex("Hook"), {1, 1});
    hook->hitBox = {static_cast<int>(hook->frame.center.x * (1 - 0.5)), static_cast<int>(hook->frame.center.y * (1 - 0.5)), static_cast<int>(hook->hitBox.w * 0.5), static_cast<int>(hook->hitBox.h * 0.5)};
    GameState = State::PAUSED;
}
Gold *catchedGold;
Uint64 lastTimeDrawMiner;
Uint64 gameTime;
void gameInstance::Loop()
{
    float fps = frequency / static_cast<float>(SDL_GetPerformanceCounter() - lastTime);
    lastTime = SDL_GetPerformanceCounter();

    while (SDL_PollEvent(&event))
    {
        switch (event.type)
        {
        case SDL_QUIT:
            instanceState = State::EXIT;
            break;
        case SDL_KEYDOWN:
            switch (event.key.keysym.sym)
            {
            case SDLK_SPACE:
                switch (GameState)
                {
                case State::PAUSED:
                    GameState = State::RUNNING;
                    break;
                case State::RUNNING:
                    GameState = State::PAUSED;
                    break;
                }
                break;
            case SDLK_ESCAPE:
                instanceState = State::EXIT;
                break;
            case SDLK_h:
                if (GameState == State::RUNNING)
                    if (hook->state == Hook::State::WAIT)
                        hook->state = Hook::State::RELEASE;
                break;
            case SDLK_r:
                if (true)
                {
                    GameState = State::RESET;
                    Clean();
                    catchedGold = nullptr;
                    Init();
                }
                break;
            case SDLK_b:
                if (!showBox)
                    showBox = true;
                else
                    showBox = false;
            }
            break;
        }
    }
    // logic

    if (instanceState == State::INIT)
    {
        catchedGold = nullptr;
        gameTime = 0;
        lastTimeDrawMiner = 0;
        instanceState = State::LOOP;
        std::println("frequency={} ", frequency);
    }

    if (GameState == State::PAUSED)
    {

    }
    if (GameState == State::RUNNING)
    {
        if (hook->state == Hook::State::WAIT)
        {
            hook->acceleration.b = 10 * cos(hook->position.b) / hook->position.a;
            if(hook->position.b<0)
                hook->position.b=0;
            if (hook->position.b > 3.14)
                hook->position.b = 3.14;
            // if (hook->position.b <= 0 && hook->velocity.b <= 0)
            //     hook->velocity.b = 3.14 / 2;
            // if (hook->position.b >= 3.14 && hook->velocity.b > 0)
            //     hook->velocity.b = -3.14 / 2;
        }
        if (hook->state == Hook::State::RELEASE)
        {
            hook->velocity.b = 0;
            hook->acceleration.b = 0;

            if ([&]() -> bool
                { auto Pos =hook->mapToScreenPixel();
                    return Pos.x >= 0 && Pos.x < background.frame.box.w && Pos.y >= 0 && Pos.y < background.frame.box.h; }())
            {
                hook->velocity.a = 300.0;
                for (auto &gptr : gold)
                {
                    auto &g = *gptr;
                    if (g.state == Gold::State::IDLE && isSpritesHit(g, *hook))
                    {
                        hook->state = Hook::State::RETRACT;
                        g.state = Gold::State::CATCH;
                        catchedGold = &g;
                        break;
                    }
                }
            }
            else
            {
                // hook->position.a = background.frame.box.h / sin(hook->position.b);
                hook->state = Hook::State::RETRACT;
            }
        }
        if (hook->state == Hook::State::RETRACT)
        {
            if (hook->position.a > 10)
            {
                hook->velocity.a = -400.0;
                if (catchedGold)
                {
                    hook->velocity.a = -400.0 + 350.0 * catchedGold->frame.scales;
                    hook->position.a += 50 * catchedGold->frame.scales;
                    auto Pos = hook->mapToScreenPixel();
                    hook->position.a -= 50 * catchedGold->frame.scales;
                    catchedGold->position = {static_cast<float>(Pos.x), static_cast<float>(Pos.y)};
                    catchedGold->velocity.a = hook->velocity.a * cos(hook->position.b);
                    catchedGold->velocity.b = hook->velocity.a * sin(hook->position.b);
                    catchedGold->updateMotion(fps);
                }
            }
            else
            {
                hook->position.a = 10;
                hook->velocity.a = 0;
                if (hook->position.b < 3.14 / 2)
                    hook->velocity.b = sqrt(2 * 10 * sin(hook->position.b) / hook->position.a);
                else
                    hook->velocity.b = -sqrt(2 * 10 * sin(hook->position.b) / hook->position.a);
                hook->state = Hook::State::WAIT;

                if (catchedGold)
                {
                    catchedGold->position = {0.0, 0.0};
                    catchedGold->velocity = {0.0, 0.0};
                    catchedGold->state = Gold::State::DEAD;
                    catchedGold = nullptr;
                }
            }
        }

        hook->updateMotion(fps);

        gameTime += frequency / fps;
    }
    // rendering

    SDL_RenderClear(renderer);
    background.draw(renderer);
    if (hook->state == Hook::State::RETRACT && (gameTime - lastTimeDrawMiner > frequency / [&]() -> int
                                                {
                                                    if (catchedGold)
                                                        return static_cast<int>(12 - 4 * catchedGold->frame.scales);
                                                    else
                                                        return 8;
                                                }()))
    {
        lastTimeDrawMiner = gameTime;
        goldMiner->nextFrame();
    }
    goldMiner->draw(renderer);

    for (auto &g : gold)
        if (g->state != Gold::State::DEAD)
            g->draw(renderer);

    auto pos = hook->mapToScreenPixel();
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
    SDL_RenderDrawLine(renderer, goldMiner->position.a, goldMiner->position.b, pos.x, pos.y);

    hook->draw(renderer);
    if (GameState == State::PAUSED)
    {
        gameBegin.draw(renderer);
    }

    if (showBox)
    {
        SDL_Rect rect = {hook->hitBox.x + hook->frame.box.x, hook->hitBox.y + hook->frame.box.y, hook->hitBox.w, hook->hitBox.h};
        SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255);
        SDL_RenderDrawRect(renderer, &rect);
        rect = {goldMiner->hitBox.x + goldMiner->frame.box.x, goldMiner->hitBox.y + goldMiner->frame.box.y, goldMiner->hitBox.w, goldMiner->hitBox.h};
        SDL_RenderDrawRect(renderer, &rect);
        SDL_SetRenderDrawColor(renderer, 0, 255, 0, 255);
        SDL_RenderDrawRect(renderer, &hook->frame.box);
        SDL_RenderDrawRect(renderer, &goldMiner->frame.box);
        for (auto &g : gold)
        {
            if (g->state != Gold::State::DEAD)
            {
                rect = {g->hitBox.x + g->frame.box.x, g->hitBox.y + g->frame.box.y, g->hitBox.w, g->hitBox.h};
                SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255);
                SDL_RenderDrawRect(renderer, &rect);
                SDL_SetRenderDrawColor(renderer, 0, 255, 0, 255);
                SDL_RenderDrawRect(renderer, &g->frame.box);
            }
        }
        SDL_SetRenderDrawColor(renderer, 0, 0, 255, 255);
        SDL_RenderDrawLine(renderer, goldMiner->position.a, goldMiner->position.b, goldMiner->position.a + 700 * cos(hook->position.b), goldMiner->position.b + 700 * sin(hook->position.b));
    }

    // for (int i = 0; i < 32; i++)
    // {
    //     SDL_RenderDrawLine(renderer, 40 * i, 0, 40 * i, 720);
    // }
    // for (int i = 0; i < 18; i++)
    // {
    //     SDL_RenderDrawLine(renderer, 0, 40 * i, 1280, 40 * i);
    // }

    SDL_RenderPresent(renderer);
    std::print("\rfps:{:.4f}", fps);
    static float fpsLim = 60.0;
    if (fpsLim)
    {
        int delay = static_cast<int>(1000 *(1 / fpsLim - (SDL_GetPerformanceCounter() - lastTime) / frequency));
        if(delay>0)
        SDL_Delay(delay);
        //std::print("delay={}", delay);
    }

    if (instanceState != State::EXIT)
        instanceState = State::LOOP;
}

void gameInstance::Clean()
{
    for (auto &g : gold)
        delete g;
    delete goldMiner;
    delete hook;
    gold.clear();
}

Gold::Gold()
{
    acceleration = {0, 0};
    velocity = {0, 0};
    position = {0, 0};
    hitBox = {0, 0, 0, 0};
}

Gold::Gold(const vec2f &position, SDL_Texture *texture, SDL_Point size, int frameNum, double angle)
{
    this->position = position;
    this->velocity = {0};
    this->acceleration = {0};
    this->texture = texture;
    frame.nums = frameNum;
    SDL_QueryTexture(texture, nullptr, nullptr, &frame.box.w, &frame.box.h);
    frame.box.w /= size.x;
    frame.box.h /= size.y;
    frame.angle = angle;
    frame.center = {frame.box.w / 2, frame.box.h / 2};
    frame.flip = SDL_FLIP_NONE;
    frame.size = size;
    hitBox = {0, 0, frame.box.w, frame.box.h};

    frame.box.x = static_cast<int>(position.a) - frame.center.x;
    frame.box.y = static_cast<int>(position.b) - frame.center.y;
    frame.scales = 1.0;
    state = Gold::State::IDLE;
}

SDL_Point Gold::mapToScreenPixel()
{
    return {static_cast<int>(position.a), static_cast<int>(position.b)};
}

void Gold::updateMotion(float fps)
{
    if (fps == 0)
        fps = 165;
    position.a += velocity.a / fps;
    position.b += velocity.b / fps;
    velocity.a += acceleration.a / fps;
    velocity.b += acceleration.b / fps;
    auto pos = mapToScreenPixel();

    frame.box.x = pos.x - frame.box.w / 2;
    frame.box.y = pos.y - frame.box.h / 2;
}

Hook::Hook(const vec2f &origin, const vec2f &position, SDL_Texture *texture, const SDL_Point &size)
{
    this->origin = origin;
    this->position = position;
    this->velocity = {0};
    this->acceleration = {0};
    this->texture = texture;
    SDL_QueryTexture(texture, nullptr, nullptr, &frame.box.w, &frame.box.h);
    frame.box.w /= size.x;
    frame.box.h /= size.y;
    frame.angle = 0.0;
    frame.center = {frame.box.w / 2, frame.box.h / 2};
    frame.flip = SDL_FLIP_NONE;
    frame.size = size;
    hitBox = {0, 0, frame.box.w / frame.size.x, frame.box.h / frame.size.y};

    frame.box.x = static_cast<int>(position.a * cos(position.b) + origin.a) - frame.center.x;
    frame.box.y = static_cast<int>(position.a * sin(position.b) + origin.b) - frame.center.y;
    frame.scales = 1.0;
}

SDL_Point Hook::mapToScreenPixel()
{
    return {static_cast<int>(position.a * cos(position.b) + origin.a), static_cast<int>(position.a * sin(position.b) + origin.b)};
}

void Hook::updateMotion(float fps)
{
    if (fps == 0)
        fps = 165;
    position.a += velocity.a / fps;
    position.b += velocity.b / fps;
    velocity.a += acceleration.a / fps;
    velocity.b += acceleration.b / fps;
    auto pos = mapToScreenPixel();
    frame.angle = position.b * 180 / 3.14;
    frame.box.x = pos.x - frame.box.w / 2;
    frame.box.y = pos.y - frame.box.h / 2;
}

bool isSpritesHit(const Sprites &A, const Sprites &B)
{
    bool xHit = A.frame.box.x + A.hitBox.x + A.hitBox.w >= B.frame.box.x + B.hitBox.x && B.frame.box.x + B.hitBox.x + B.hitBox.w >= A.frame.box.x + A.hitBox.x;
    bool yHit = A.frame.box.y + A.hitBox.y + A.hitBox.h >= B.frame.box.y + B.hitBox.y && B.frame.box.y + B.hitBox.y + B.hitBox.h >= A.frame.box.y + A.hitBox.y;
    if (xHit && yHit)
        return true;
    return false;
}