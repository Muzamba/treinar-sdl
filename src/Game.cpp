#include "Game.h"
#include "TextureManager.h"
#include "GameObject.h"
#include "Map.h"
#include "ECS.h"
#include "Components.h"


GameObject* player;
GameObject* alien;
Map* map;

SDL_Renderer* Game::renderer = nullptr; 

Manager manager;
auto& newPlayer(manager.addEntity());

Game::Game(){
}
Game::~Game(){
}
void Game::init(const char* titulo, int x_pos, int y_pos, int width, int height, bool fullscreen){
    int flags = 0;
    if(fullscreen){
        flags = SDL_WINDOW_FULLSCREEN;
    }
    if(SDL_Init(SDL_INIT_EVERYTHING) == 0) {
        std::cout << "Subsystems Initialised!...." << std::endl;
        
        window = SDL_CreateWindow( titulo, x_pos, y_pos, width, height, flags);
        if(window){
            std::cout << "Window created!" << std::endl;
        }
        renderer = SDL_CreateRenderer(window, -1, 0);
        if(renderer){

            SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255);
            std::cout << "Renderer created!" << std::endl;
        }
        isRunning = true;
    } else {
        isRunning = false;
    }
    player = new GameObject("../assets/Player.png", 0, 0); //, renderer
    alien = new GameObject("../assets/Alien.png", 50, 50);  //, renderer
    map = new Map();

    newPlayer.addComponent<PositionComponent>();
    newPlayer.getComponent<PositionComponent>.setPos(500, 500);
}

void Game::handleEvents(){
    SDL_Event evento;
    SDL_PollEvent(&evento);
    switch(evento.type) {
        case SDL_QUIT:
            isRunning = false;
            break;

        default:
        break;
    }
}

void Game::update(){
    player->Update();
    alien->Update();
    manager.update();

    std::cout << newPlayer.getComponent<PositionComponent>().x() << "," << 
    newPlayer.getComponent<PositionComponent>().y() << std::endl;

}
void Game::render(){
    SDL_RenderClear(renderer);
    //Adione aqui as coisas para renderizar
    map->DrawMap();
    player->Render();
    alien->Render();
    SDL_RenderPresent(renderer);

}
void Game::clean(){
    SDL_DestroyWindow(window);
    SDL_DestroyRenderer(renderer);
    SDL_Quit();
    std::cout << "Game cleaned" << std::endl;

}