# office-putting
# Project Title and purpose

The original name of our project was office putting. We wanted a game that looked like an office with a golf ball rolling through, but as the project went on and we encountered challenges, the game swerved from the original idea. Now, the game consists of a sliding black bar that determines the distance of the ball, and the hole requires multiple shots to complete. The game will count up the amount of strokes needed to complete the hole and report them back to you when the game is over.

### Difficulties or opportunities you encountered along the way.

The toughest part was getting the ball and the slider to communicate with one another. Getting the slider to move back and forth on its own was difficult enough, then getting the movement of the ball to corolate depending on where the slider was on the x axis was very difficult. It included many if statements and multiple methods.

### Most interesting piece of your code and explanation for what it does.

void putt() {
  if (x1>=420 && x1<=450) {    
    println("Too short");      
    this.ball();
  } else if (x1>=451 && x1<=480) {    
    println("slightly short");
    this.ball2();
  } else if (x1>=481 && x1<=510) {    
    println("perfect!");
    this.ball3();
  } else if (x1>=511 && x1<=540) {   
    println("slightly short");
    this.ball4();
  } else if (x1>=541 && x1<=570) {    
    println("Too short");
    this.ball5();
  }
}

This is the part of the code that reads where the black slider is( marked as x1). Depending on the x value, it will print out the type of shot hit, being either too short, slightly short, or perfect. Also, it will call seperate ball methods that include the speed of the ball, which determines the distance that the ball will move. The if statements were not the hardest part to write, but getting everything to run together without error was very difficult.


* [Processing](https://processing.org/) - The IDE used

## Authors

Luke Rexing
David Westphal

## Acknowledgments

Jonny Wise
- helped improve code and get ball to actually move
* Hat tip to anyone whose code was used
* Inspiration
* etc








