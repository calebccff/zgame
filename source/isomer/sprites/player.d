module isomer.sprites.player;

import isomer.sprites.sprite;

import dsfml.graphics.renderwindow;
import isomer.utils;

import std.math;
import std.conv;


/** A definition of a "player" of the game*/
class Player : ZSprite{
    /** Player factory methods */
    public Player withRenderWindow(RenderWindow win) {
        this.win = win;
        return this;
    }
    /** end factory methods */

    public override void gameTick() {
        
    }

    public override void display() {

    }
}