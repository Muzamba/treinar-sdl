#pragma once

#include "Components.h"

class PositionComponent : public Component {

private:
    int x_pos;
    int y_pos;

public:


    PositionComponent() {
        x_pos = 0;
        y_pos = 0;
    }

    PositionComponent(int x, int y){
        x_pos = x;
        y_pos = y;
    }


    int x(){return x_pos;}
    int y(){return y_pos;}
    void init() override {
        x_pos = 0;
        y_pos = 0;    
    }
    void update() override{
        x_pos++;
        y_pos++;
    }
    void setPos(int x, int y){
        x_pos = x;
        y_pos = y;
    }
};