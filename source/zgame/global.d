module zgame.global;

public import isomer.utils;
import std.random;

import dsfml.graphics;

///Handle to the window for drawing graphics
RenderWindow window;

///Quick reference to window dimensions
float
  width = 1300,
  height = 800;


/** Source for random number generation **/
Random rnd;

static this() {
  rnd = Random(unpredictableSeed);
}