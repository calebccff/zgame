module isomer.sprites.player;

import dsfml.graphics;
import isomer.utils;

import std.math;
import std.conv;

/** A definition of a "player" of the game*/
class Player {
    private Vector2f _position;
    private RenderWindow win;

    /** Protected default constructor to prevent construction outside of isomer.sprites.player */
    protected Player() {

    }

    public @property:
        int x() {
            return to!int(round(_position.x));
        }
        int y() {
            return to!int(round(_position.y));
        }
    
    /** Player factory methods */
    public Player withRenderWindow(RenderWindow win) {
        this.win = win;
        return this;
    }
    /** end factory methods */
}