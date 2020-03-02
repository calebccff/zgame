module isomer.utils;

import std.traits;

import dsfml.graphics;
import zgame.global; //Cyclical import
///Function to iniialise the window
void dsfmlInitWindow(ref RenderWindow window) {
	window = new RenderWindow(VideoMode(cast(int)width, cast(int)height), //VideoMode.getFullscreenModes()[0],
		"ZGamE",
		Window.Style.None);
  	window.setFramerateLimit(60);
}

float sq(float x) {
	import std.math : pow;
	return pow(x, 2);
}

/** Calculates the magnitude of a vector */
@property float mag(Vector2f v) {
  import std.math : sqrt;
  return sqrt(sq(v.x)+sq(v.y));
}
/** Dot product of vectors */
@property float dot(Vector2f f, Vector2f s) {
  return f.x*s.x+f.y*s.y;
}
/** Sets the magnitude of a vector*/
@property Vector2f mag(ref Vector2f f, float newmag) {
  if(f.mag == 0) return f;
  f /= f.mag;
  f *= newmag;
  return f;
}
/** Rotates a vector given a degrees angle */
@property Vector2f rotate(ref Vector2f f, float ang){ //Takes ang in degrees
  import std.math : cos, sin, PI;
  const float t = f.x;
  ang = ang/180*PI;
  f.x = f.x*cos(ang) - f.y*sin(ang);
  f.y = t*sin(ang) - f.y*cos(ang);
  return f;
}
/** Functions to constrain a vector to given dimensions */
void constrain(ref Vector2f f, float minx, float maxx, float miny, float maxy) {
  if(f.x < minx) f.x = minx;
  if(f.x > maxx) f.x = maxx;
  if(f.y < miny) f.y = miny;
  if(f.y > maxy) f.y = maxy;
}
void constrain(T)(ref T f, T min, T max)
  if (isIntegral!T)
{
  if(f < min) f = min;
  if(f > max) f = max;
}