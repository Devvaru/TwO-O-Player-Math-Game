# TwO-O-Player Math Game

## Description
Create a 2-Player *math game* where *players* take *turns* to answer simple math addition problems. A new math *question* is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details
- Players start with 3 lives each
- They lose a life if they mis-answer a question
- At the end of every turn, the game should output the new scores for both players, so players know where they stand
- The game doesn’t end until one of the players loses all their lives
- then the game should announce who won and what the other player’s score is

## Planning

### Players
attributes:
- lives

methods:
- calculating lives remaining (state)

### Math questions
attrtibutes:
- questions

methods:
- calculate actual solution

### Matches
attributes:
- turns
- score

methods:
- compile and display other method results
- calculate turn
- output answer input
- output actual answer
- output current score (state)

### Modules
- Randomizer
    - used by Math questions
    - used by Player matching

Create a new project folder and track it using git; publish it to GitHub

This project will contain multiple classes. Each class should be defined in its own rb file. You should not put any other code outside the class definition
Define a main.rb file that will require all the other files
Use gets.chomp to get input from users and puts for output
Isolate your I/O logic to one or two classes. Don't allow all your classes to interact (gets/puts) with the User
Remember to build incrementally, writing small amounts of runnable code instead of writing out a whole bunch of classes/methods that are not yet testable/runnable.
Use puts, raise some_val.inspect, and byebug to help with debugging