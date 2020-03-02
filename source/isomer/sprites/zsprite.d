module isomer.sprites.zsprite;

import dsfml.graphics;
import std.conv;
import dsfml.graphics.renderwindow;

/** abstract definition of a sprite,
should be able to be drawn on top of the background layer,
react to events and trigger events for other objects
*/

abstract class ZSprite {

    protected Vector2f _position;
    protected RenderWindow win;

    /** Protected default constructor to prevent construction outside of isomer.sprites.player */
    protected this() {
    }

    public @property:
        int x() {
            return to!int(round(_position.x));
        }
        void x(int x) {
            this._position.x = x;
        }
        int y() {
            return to!int(round(_position.y));
        }
        void y(int y) {
            this._position.y = y;
        }
    /** should render to the window */
    public abstract void display();
    /** do any game tick related stuff */
    public abstract void gameTick();
}