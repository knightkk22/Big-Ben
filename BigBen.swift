/* Big Ben Roethlisberger's Game Winning Drive */

import Foundation

print("Welcome to Big Ben's Two Minute Drill")
print("Your team is losing and you are on the 20 yard line.")
print("2 minutes are left on the clock to go 80 yards, score, and win the game.")
print("")

var yardLine = 20
var down = 1
var yardsToGo = 10
var gameOver = false
var yardsGained: Int
var playSelected: String

while (gameOver) == false {

    print("Enter 1 for Run Play, 2 for Pass Play")
    print("Pick a play> ", terminator: "")
    playSelected = readLine()!

    yardsGained = Int.random(in: 0 ... 10)
    yardsToGo = yardsToGo - yardsGained
    down = down + 1
    yardLine = yardLine + yardsGained

    if yardsToGo < 0{
        down = 1
        yardsToGo = 10
        print("You gain \(yardsGained)")
    }else{
        down = down + 1
        print("You gain \(yardsGained) yards.")
    }

    if yardLine >= 100{
        print("Touchdown! You Win")
        gameOver = true
    } else if yardLine < 100 && down > 4{
        print("Turnover on downs. You lose :(")
        gameOver = true
    }
}
