import std.stdio;
import dsfml.graphics;

import zgame.zgame;
import zgame.global;

int main()
{
	auto game = new ZGame();
	dsfmlInitWindow(window);
	return game.doWindowLoop();
}