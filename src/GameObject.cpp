#include "GameObject.h"
#include "TextureManager.h"

GameObject::GameObject(const char* texturesheet, int x, int y){ //, SDL_Renderer* ren
    //renderer = ren;
    objTexture = TextureManager::LoadTexture(texturesheet); //, ren

    x_pos = x;
    y_pos = y;

}

void GameObject::Update(){

    x_pos++;
    y_pos++;
    

    srcRect.h = 32;
    srcRect.w = 32;
    srcRect.x = 0;
    srcRect.y = 0;

    destRect.x = x_pos;
    destRect.y = y_pos;
    destRect.w = srcRect.w * 2;
    destRect.h = srcRect.h * 2;


}

void GameObject::Render(){
    SDL_RenderCopy(Game::renderer, objTexture, &srcRect, &destRect);
}