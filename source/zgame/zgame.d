module zgame.zgame;

import zgame.global;

import isomer.sprites.zsprite;
import isomer.sprites.player_factory;
import isomer.sprites.player;

import dsfml.graphics;


/** Main class for the game, manages state */
public class ZGame {

    /** A collection of currently on screen sprites to be rendered */
    /** TODO: Use some better structure -> functional? */
    ZSprite[] sprites;

    this() {
        sprites ~= PlayerFactory.createPlayer(window);
    }

    /** Handles the main window redraw / event loop */
    int doWindowLoop() {
        while(window.isOpen()) {
            Event event;
            while (window.pollEvent(event)){
                // "SIGTERM" event: we close the window
                if (event.type == Event.EventType.Closed){
                    window.close();
                    return 0;
                }
            }
            window.clear();
            /* Game loop stuff */
            foreach (ZSprite spr; sprites)
            {
                spr.gameTick();
                spr.display();
            }
            /* end game loop stuff */
            window.display();
        }
        return 1; //means the window was forcibly closed, probably don't want to actually exit with code 1 here...
    }

}