# Spaceship & Asteroids Arcade Game - Reasoning about Programs Coursework 1
This repository contains a B specification of a very simple version of the old Spaceship & Asteroids arcade game, using the B tools Atelier B & ProB.

## Introduction
The aim of this coursework is to develop a B specification of the Regions of Space, Spaceship & Asteroids. The spaceship has to move from its home base through space using various movement operations to get to the Starbase, while avoiding asteroids.

## Game Description
* Space is made up of regions (squares of the grid) 12 wide by 7 high.
* The regions of space are populated by 11 asteroids, each in one region of space.
* The Spaceship occupies only one square at a time and can only be in an "empty space square", except when “docked” at the Starbase in its square (6,4).
* The Spaceship is initially in its homebase, i.e. the bottom left square (1, 1).
* The spaceship can make a normal move in one of four directions: Up, Down, Forward (right) & Reverse (left) using 5 units of power.
* The spaceship can engage its warp-drive & "jumps" to any region of space, except one occupied by an asteroid using 20 units of power.
* If the spaceship crashes into an asteroid it loses 10 units of power.
* If it has less than the required amount of power to do either a normal move or a warp-drive jump it can not do that type of move.
* The game can be won if the spaceship docks at the Starbase or lost if the spaceship is not docked at the Starbase and cannot move because it has run out of power.

## B Specification
The B specification consists of the following elements:

### Sets and Constants
Define the sets and constants required to define the data and state of the spaceship, space, asteroids, and their properties.

### System State
Define the state variables required to represent space, asteroids, and the spaceship, including the state invariant and initialization.

### New Game
Define the NewGame(power) operation to start or re-start the game, resetting the spaceship to the initial state and setting its power level to the value of the power parameter.

### Spaceship Movements in Space
Define the basic movements that all move the spaceship one region (square) in the appropriate direction in space and use up 5 units of the spaceship's power:
* MoveUp
* MoveDown
* MoveForward
* MoveBackward (i.e. reverse)
* Define the EngageWarpDrive(newposition) operation to warp the spaceship to the new position, using 20 units of the spaceship's power.

### Spaceship's Mission Status
Define the MissionStatus operation to report the current status of the spaceship, including its current location, its current power reserves, and how many asteroid collisions it has had.

### Spaceship's Mission Route
Define the RegionsVisited operation to report the regions of space that the spaceship has visited.
