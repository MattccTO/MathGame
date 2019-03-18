## Math Game Project Plan

## Game Rules
* This is a 2 player game
* Both players begin with 3 lives
* Players take turns answering randomly generated math problems with integers ranging 1-20
* Incorrect answers result in a player losing a life
* The game ends when one player loses all their lives, with the other player declared the winner

## Code Structure

### Classes
* Player
* Game
* Turn
* Question

#### Player
The player class keeps track of player specific information and methods.
State: starting lives, current lives, player name.
Methods:
1. Lose life on wrong answer
2. Get method for current life total.
3. Is player dead?

#### Game
The game class manages the implementation of the game and looping through turns until end. The game class will be the only class to make puts to console.
State: players
Methods:
1. Play the game.
2. Message user with game updates.
3. Check if game is over.

#### Turn
The turn class will manage each turn.
State: Players, turn #
Method:
1. Increment turn.
2. Get current player.


#### Question
The question class manages the question/answer.
State: None
Methods: Current random #s
1. Generate question.
2. Generate answer to question.