//: Playground - noun: a place where people can play

import UIKit

/*
 Manually create a single collection named 'players' that contains all information for all 18 players. Each player must themselves be represented by a Dictionary with String keys and the corresponding values.
 
 list of all players
 */
var players = [
    ["name": "Joe Smith","height": "42", "experience": "yes", "guardian": "Jim and Jan Smith"],
    ["name": "Jill Tanner","height": "36", "experience": "yes", "guardian": "Clara Tanner"],
    ["name": "Bill Bon","height": "43", "experience": "yes", "guardian": "Sara and Jenny Bon"],
    ["name": "Eva Gordon","height": "45", "experience": "no", "guardian": "Wendy and Mike Gordon"],
    ["name": "Matt Gill","height": "40", "experience": "no", "guardian": "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein","height": "41", "experience": "no", "guardian": "Bill and Hillary Stein"],
    ["name": "Sammy Adams","height": "45", "experience": "no", "guardian": "Jeff Adams"],
    ["name": "Karl Saygan","height": "42", "experience": "yes", "guardian": "Heather Bledsoe"],
    ["name": "Suzane Greenberg","height": "44", "experience": "yes", "guardian": "Henrietta Dumas"],
    ["name": "Sal Dali","height": "41", "experience": "no", "guardian": "Gala Dali"],
    ["name": "Joe Kavalier","height": "39", "experience": "no", "guardian": "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein","height": "44", "experience": "no", "guardian": "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto","height": "41", "experience": "yes", "guardian": "Robin and Sarika Soto"],
    ["name": "Chloe Alaska","height": "47", "experience": "no", "guardian": "David and Jamie Alaska"],
    ["name": "Arnold Willis","height": "43", "experience": "no", "guardian": "Claire Willis"],
    ["name": "Phillip Helm","height": "44", "experience": "yes", "guardian": "Thomas Helm and Eva Jones"],
    ["name": "Les Clay","height": "42", "experience": "yes", "guardian": "Wynonna Brown"],
    ["name": "Herschel Krustofski","height": "45", "experience": "yes", "guardian": "Hyman and Rachel Krustofski"]
]

/*
 Create appropriate variables and logic to sort and store players into three teams: Sharks, Dragons and Raptors. Store the players for each team in collection variables named 'teamSharks', 'teamDragons', and 'teamRaptors'. Be sure that your logic results in all teams having the same number of experienced players on each.
 */
/*..........
 variables
 .........*/

var teamSharks: [Dictionary<String, String>] = []
var teamDragons: [Dictionary<String, String>] = []
var teamRaptors: [Dictionary<String, String>] = []
var expCount = 1
var noExpCount = 1

/*........................................
 function for assigning players to teams
 takes in the count number and the player
 then assigns it to whichever team is next 
 in the loop
 .......................................*/

func assignPlayer(counter: Int, person: [String : String]){
    if (counter % 3 == 1){
        teamSharks.append(person)
    } else if (counter % 3 == 2){
        teamDragons.append(person)
    } else if (counter % 3 == 0){
        teamRaptors.append(person)
    }
}

/*........................................
 loops through each player, then assings
 player to team whether the player has
 experience or not. if player has exp,
 player info is sent to function to add
 player to next team in line. same with
 noExp players
 .......................................*/


for player in players {
    switch (player["experience"]!){
    case "yes":
        assignPlayer(counter: expCount, person: player)
        expCount += 1
    default:
        assignPlayer(counter: noExpCount, person: player)
        noExpCount += 1
    }
}

 /*
 Provide logic that prints a personalized letter to each of the guardians specifying: the player’s name, guardian names, team name, and date/time of their first team practice. The values for each should exactly match what we have provided, including the team practice dates and times above. The letters must be stored in a collection variable named 'letters'.
 
 When the code is run, the letters should be printed in the console (Note: you need to print out the array content as formatted individual letters, not a direct content dump of the ‘letters’ array. It is easy to tell, if the output contain brackets “[“, “]”, then you are printing the array itself, not the content only.).
*/

/*.................................
 function to build a message based
 on input from specific teams
 ................................*/

func printLetters(playerName: String, playerGuard: String, playerTeam: String, teamSchedule: String) -> String{
    var messageToParents = ""
    messageToParents = "Dear \(playerGuard), \(playerName) has been assigned to the team \(playerTeam)! Practices will begin on \(teamSchedule) and we look forward to seeing you soon. Go \(playerTeam)!!"
    return messageToParents
}

/*.....................................
 custom messages for printLetters func
 ....................................*/

for member in teamSharks {
    var sharksMessage = printLetters(playerName: member["name"]!, playerGuard: member["guardian"]!, playerTeam: "Sharks", teamSchedule: "March 17, 3pm")
    print(sharksMessage)
}
for member in teamDragons {
    var dragonsMessage = printLetters(playerName: member["name"]!, playerGuard: member["guardian"]!, playerTeam: "Dragons", teamSchedule: "March 17, 1pm")
    print(dragonsMessage)
}
for member in teamRaptors {
    var raptorsMessage  = printLetters(playerName: member["name"]!, playerGuard: member["guardian"]!, playerTeam: "Raptors", teamSchedule: "March 18, 1pm")
    print(raptorsMessage)
}


