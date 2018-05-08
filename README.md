# A Basic Finder Visor

## What ?
An apple script for use the Finder as "TotalFinder's Visor feature".

## Why ?
The TotalFinder visor working great and is very powerfull, but it force the user to use "chrome syle tabs" and I don't like it  😇.

## How use it
For using it, you should use a software like Better Touch Tool for execute the apple script on (for eg) trackpad gesture.
My config is "Two fingers swipe from bottom edge" for execute the AS and Finder specific "Two fingers swipe from top edge" for close it.
You will probably have to give accessibility rights to Better touch tool for execute AS.

## How it work
On script execute :

1/ Look for a Finder window.

2/ If find and is active, hide the window
   If find and not active, set the existing window on foreground (and keep his existing size)
   Else if not Finder win at all, create a new Finder win and size/move to the bottom row of the screen (1/3) and full width.
