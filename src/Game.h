#ifndef GAME_HPP
#define GAME_HPP
#include "SDL2/SDL.h"
#include "SDL2/SDL_image.h"
#include "TextureManager.h"
#include <iostream>

class Game {
public:
    Game();
    ~Game();

    void init(const char* titulo, int x_pos, int y_pos, int width, int height, bool fullscreen);
    void handleEvents();
    void update();
    void render();
    void clean();
    bool running() { return isRunning; }

    static SDL_Renderer* renderer;

private:
    int cnt=0;
    bool isRunning;
    SDL_Window *window;
   // SDL_Renderer *renderer;
};


#endif /*GAME_HPP*/
