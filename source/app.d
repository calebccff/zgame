import std.stdio;
import dsfml.graphics;

import global;

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
		window.display();
	}
	return 1;
}

int main()
{
	dsfmlInitWindow(window);
	return doWindowLoop();
}