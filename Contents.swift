//: Playground - noun: a place where people can play
//Week 6 Critical Thinking - Collections
//By: Nestor (Felix) Sotres

import UIKit

var str = "Week 6: Critical Thinking - Collections\nBy Nestor (Felix) Sotres\n\nThis program will use some dictionaries and arrays to print out some information about a few of the video games I have collected over the years."

print(str)

var maxYear : Int = 0	//holds current largest release date
var gameName : String = ""  //holds name of game with newest release date

//Array holding names of games

var gameNames : [String] = ["Mario Kart 64", "The Legend of Zelda: Ocarina of Time", "GoldenEye 007", "New Super Mario Bros.Wii", "Mario Party 8", "Mario Kart Wii", "NBA Jam on Fire Edition", "Tekken 3", "Tekken 2", "Resident Evil 2"]

//Dictionary holding release dates
var releaseDates : [String : Int ] = ["Mario Kart 64" : 1997, "The Legend of Zelda: Ocarina of Time" : 1998, "GoldenEye 007" : 1997, "New Super Mario Bros. Wii" : 2009, "Mario Party 8" : 2007, "Mario Kart Wii" : 2008, "NBA Jam on Fire Edition" : 2010, "Tekken 3" : 1997, "Tekken 2" : 1995, "Resident Evil 2" : 1998]


//Dictionary holding main developer
var mainDeveloper : [String : String] = ["Mario Kart 64" : "Nintendo", "The Legend of Zelda: Ocarina of Time" : "Nintendo", "GoldenEye 007" : "Rare", "New Super Mario Bros. Wii" : "Nintendo", "Mario Party 8" : "Nintendo", "Mario Kart Wii" : "Nintendo", "NBA Jam on Fire Edition" : "Electronic Arts", "Tekken 3" : "Namco", "Tekken 2" : "Namco", "Resident Evil 2" : "Capcom"]

//Dictionary holding console game was released on
var consoleReleased : [String : String ] = ["Mario Kart 64" : "Nintendo 64", "The Legend of Zelda: Ocarina of Time"  : "Nintendo 64", "GoldenEye 007" : "Nintendo 64", "New Super Mario Bros. Wii" : "Nintendo Wii", "Mario Party 8" : "Nintendo Wii", "Mario Kart Wii" : "Nintendo Wii", "NBA Jam on Fire Edition" : "Nintendo Wii", "Tekken 3" : "Playstation", "Tekken 2" : "Playstation", "Resident Evil 2" : "Playstation"]

//function takes an array of games and prints out its names
func printNames()->Void {
    println("\n\n1. List of games collected: ")
    for var cnt = 0; cnt < gameNames.count; ++cnt{
        print(gameNames[cnt] + ", ")
    }
}

//function prints games from newest to oldest
func printNewToOld() ->Void{
    print("\n\n2. Print a list of games by release date from Newest to oldest.")
    for var cnt : Int = 0; cnt < releaseDates.count; ++cnt{
        for (game, date) in releaseDates{
            //println(game + " \(date)")
            if (date > maxYear){
            maxYear = date
            gameName = game
            
            
            }
        }
        releaseDates[gameName] = -1
        print("\nVideogame: \(gameName) Year released: \(maxYear)")
        maxYear = 0
    }
}

//function prints out games grouped by developer
func printByDeveloper()->Void{
    println("\n\n3. Printing videogames by Developer:")
    findAndPrintDev("Capcom")
    findAndPrintDev("Electronic Arts")
    findAndPrintDev("Namco")
    findAndPrintDev("Nintendo")
    findAndPrintDev("Rare")
}
//finds and prints the game and dev based on its input
func findAndPrintDev(dev : String)->Void{
    for (game, developer) in mainDeveloper{
        if developer == dev{
            println(game + " Developer: " + developer)
        }
    }
}

//function prints out games by console
func printByConsole()->Void{
    println("\n\n4. Printing videogames by Console:")
    findAndPrintCon("Nintendo 64")
    findAndPrintCon("Nintendo Wii")
    findAndPrintCon("Playstation")
    
}

//finds and prints the game and dev based on its input
func findAndPrintCon(con : String)->Void{
    for (game, console) in consoleReleased{
        if console == con{
            println(game + " Console: " + console)
        }
    }
}

//holder function for delay on video
func start()->Void{
    printNames()
    printNewToOld()
    printByDeveloper()
    printByConsole()
}

start()

