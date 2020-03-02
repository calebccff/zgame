module isomer.sprites.player_factory;

import isomer.sprites.player;

import dsfml.graphics.renderwindow;
/** Constructs player objects via factory methods*/
static class PlayerFactory {

    /** Creates a player with an instance of RenderWindow */
    public static Player createPlayer(ref RenderWindow win) {
        return new Player().withRenderWindow(win);
    }
}