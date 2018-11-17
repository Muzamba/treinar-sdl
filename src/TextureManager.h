#pragma once
#ifndef TEXTURE_MANAGER_H
#define TEXTURE_MANAGER_H
#include "Game.h"

class TextureManager{
    public:
        static SDL_Texture* LoadTexture(const char* nomeArqu); //, SDL_Renderer* ren
        static void Draw(SDL_Texture* tex, SDL_Rect src, SDL_Rect dest);
};

#endif
