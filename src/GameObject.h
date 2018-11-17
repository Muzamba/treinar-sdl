#ifndef GAME_OBJECT_H
#define GAME_OBJECT_H
#pragma once
#include "Game.h"

class GameObject {
    public:
        GameObject(const char* texturesheet, int x, int y); //, SDL_Renderer* ren
        ~GameObject();

        void Update();
        void Render();

    private:

        int x_pos;
        int y_pos;

        SDL_Texture* objTexture;
        SDL_Rect srcRect, destRect;
        //SDL_Renderer* renderer;

};
#endif
