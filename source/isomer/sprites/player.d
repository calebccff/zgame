module isomer.sprites.player;

import isomer.sprites.zsprite;

import dsfml.graphics.renderwindow;
import isomer.utils;

import std.math;
import std.conv;

import dsfml.graphics;


/** A definition of a "player" of the game*/
class Player : ZSprite{
    /** Player factory methods */
    public Player withRenderWindow(ref RenderWindow win) {
        this.win = &win;
        return this;
    }
    /** end factory methods */

    public override void gameTick() {
        
    }

    public override void display() {
        RectangleShape s = new RectangleShape(Vector2f(30, 80));

        s.position = Vector2f(200, 400);
        s.outlineThickness = 4;
        s.outlineColor = Color.Green;
        s.fillColor = Color.Black;
        win.draw(s);
    }
}