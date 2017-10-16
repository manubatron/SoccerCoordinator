// Julius Manubay's - Soccer Coordinator program
// Dictionary of Array to hold all 18 players information.
var players: [[String:Any]] = [
    [
        "firstName": "Joe",
        "lastName": "Smith",
        "height": 42,
        "soccerExperience": true,
        "guardianNames": "Jim and Jan Smith"
    ],
    [
        "firstName": "Jill",
        "lastName": "Tanner",
        "height": 36,
        "soccerExperience": true,
        "guardianNames": "Clara Tanner"
    ],
    [
        "firstName": "Bill",
        "lastName": "Bon",
        "height": 43,
        "soccerExperience": true,
        "guardianNames": "Sara and Jenny Bon"
    ],
    [
        "firstName": "Karl",
        "lastName": "Saygan",
        "height": 42,
        "soccerExperience": true,
        "guardianNames": "Heather Bledsoe"
    ],
    [
        "firstName": "Suzanne",
        "lastName": "Greenberg",
        "height": 44,
        "soccerExperience": true,
        "guardianNames": "Henrietta Dumas"
    ],
    [
        "firstName": "Diego",
        "lastName": "Soto",
        "height": 41,
        "soccerExperience": true,
        "guardianNames": "Robin and Sarika Soto"
    ],
    [
        "firstName": "Phillip",
        "lastName": "Helm",
        "height": 44,
        "soccerExperience": true,
        "guardianNames": "Thomas Helm and Eva Jones"
    ],
    [
        "firstName": "Les",
        "lastName": "Clay",
        "height": 42,
        "soccerExperience": true,
        "guardianNames": "Wynonna Brown"
    ],
    [
        "firstName": "Hershel",
        "lastName": "Krustofski",
        "height": 45,
        "soccerExperience": true,
        "guardianNames": "Hyman and Rachel Krustofski"
    ],
    [
        "firstName": "Eva",
        "lastName": "Gordon",
        "height": 45,
        "soccerExperience": false,
        "guardianNames": "Wendy and Mike Gordon"
    ],
    [
        "firstName": "Matt",
        "lastName": "Gill",
        "height": 40,
        "soccerExperience": false,
        "guardianNames": "Charles and Sylvia Gill"
    ],
    [
        "firstName": "Kimmy",
        "lastName": "Stein",
        "height": 41,
        "soccerExperience": false,
        "guardianNames": "Bill and Hillary Stein"
    ],
    [
        "firstName": "Sammy",
        "lastName": "Adams",
        "height": 45,
        "soccerExperience": false,
        "guardianNames": "Jeff Adams"
    ],
    [
        "firstName": "Sal",
        "lastName": "Dali",
        "height": 41,
        "soccerExperience": false,
        "guardianNames": "Gala Dali"
    ],
    [
        "firstName": "Joe",
        "lastName": "Kavalier",
        "height": 39,
        "soccerExperience": false,
        "guardianNames": "Sam and Elaine Kavalier"
    ],
    [
        "firstName": "Ben",
        "lastName": "Finkelstein",
        "height": 44,
        "soccerExperience": false,
        "guardianNames": "Aaron and Jill Finkelstein"
    ],
    [
        "firstName": "Chloe",
        "lastName": "Alaska",
        "height": 47,
        "soccerExperience": false,
        "guardianNames": "David and Jamie Alaska"
    ],
    [
        "firstName": "Arnold",
        "lastName": "Willis",
        "height": 43,
        "soccerExperience": false,
        "guardianNames": "Claire Willis"
    ]
]

// Information is a little to much to pass, so these variables are declared so the For loops can automatically sift through who is experienced and who isnt.

var hasExperience: [[String:Any]] = []
var noExperience: [[String:Any]] = []

for i in 0..<players.count {
    let player = players[i]
    
    if players[i]["soccerExperience"] as? Bool == true {
        hasExperience.append(player)
    } else {
        noExperience.append(player)
    }
}

// Now these variables are declared so we can start putting players into teams and make sure that the amount of experienced players are the same accross the board.
var teamDragons: [[String:Any]] = []
var teamSharks: [[String:Any]] = []
var teamRaptors: [[String:Any]] = []

// Using the while loop here to ensure that as each player is appeneded to each team they are removed from the experienced array.
var i = 0

while i != hasExperience.count {
    let player = hasExperience[i]
    if teamDragons.count == teamSharks.count && teamRaptors.count == teamDragons.count {
        teamDragons.append(player)
        hasExperience.remove(at: i)
        i = 0
    } else if teamDragons.count > teamSharks.count {
        teamSharks.append(player)
        hasExperience.remove(at: i)
        i = 0
    } else {
        teamRaptors.append(player)
        hasExperience.remove(at:i)
        i = 0
    }
}

/*
 
    These print statements are making sure each player appended was experienced
 
    print("These are the experienced players for Team Dragons \(teamDragons)")
    print("These are the experienced players for Team Sharks \(teamSharks)")
    print("These are the experienced players for Team Raptors \(teamRaptors)")
 
    hasExperience.count to make sure the array is now empty
*/

// For loop to go through and determine where to assign unexperienced players.
// print(i) -> make sure i is back at 0

while i != noExperience.count {
    let player = noExperience[i]
    if teamDragons.count == teamSharks.count && teamRaptors.count == teamDragons.count {
        teamDragons.append(player)
        noExperience.remove(at: i)
        i = 0
    } else if teamDragons.count > teamSharks.count {
        teamSharks.append(player)
        noExperience.remove(at: i)
        i = 0
    } else {
        teamRaptors.append(player)
        noExperience.remove(at:i)
        i = 0
    }
}

/*
 
 These print statements are making sure each player appended was experienced and determine that each team does indeed have 6 players each
 
 print("These are the players for Team Dragons \(teamDragons)")
 print("These are the players for Team Sharks \(teamSharks)")
 print("These are the players for Team Raptors \(teamRaptors)")
 teamDragons.count
 teamSharks.count
 teamRaptors.count
 
 noExperience.count to check if the noExperience array is empty
*/


// So now that we have all the teams within the same experience and same team values lets add new values to each dictionary to signify which team each player belongs to
for i in 0..<teamDragons.count {
    teamDragons[i]["team"] = "Team Dragons"
    teamDragons[i]["practiceTime"] = "March 17, 1:00 PM"
}

for i in 0..<teamSharks.count {
    teamSharks[i]["team"] = "Team Sharks"
    teamSharks[i]["practiceTime"] = "March 17, 3:00 PM"
}

for i in 0..<teamRaptors.count {
    teamRaptors[i]["team"] = "Team Raptors"
    teamRaptors[i]["practiceTime"] = "March 18, 1:00 PM"
}



/*
 
 These print statements are making sure each player has their team and practice time appended.
 
 print("These are the players for Team Dragons \(teamDragons)")
 print("These are the players for Team Sharks \(teamSharks)")
 print("These are the players for Team Raptors \(teamRaptors)")
 
*/

// Dictionary of Arrays to hold the values of all of the players
let allPlayers: [[String:Any]] = teamDragons + teamSharks + teamRaptors

/*
 
 This is the test to see if all of the players had correctly been added to the array
 allPlayers.count

*/
 
// Now that we have the teams and all of the other information relevant to the assignment, lets create the letters! 

var letters: [String] = []

for i in 0..<allPlayers.count {
    
    if allPlayers[i]["team"] as? String == "Team Dragons"  {
        letters.append("\(String(describing: allPlayers[i]["guardianNames"]!)), we would like to welcome \(String(describing: allPlayers[i]["firstName"]!)) \(String(describing: allPlayers[i]["lastName"]!)) to \(String(describing: allPlayers[i]["team"]!))! The first practice will be held \(String(describing: allPlayers[i]["practiceTime"]!))! Please refer to the enclosed list of equipment needed, and feel free to contact us if you have any questions!")
    } else if allPlayers[i]["team"] as? String == "Team Sharks" {
        letters.append("\(String(describing: allPlayers[i]["guardianNames"]!)), we would like to welcome \(String(describing: allPlayers[i]["firstName"]!)) \(String(describing: allPlayers[i]["lastName"]!)) to \(String(describing: allPlayers[i]["team"]!))! The first practice will be held \(String(describing: allPlayers[i]["practiceTime"]!))! Please refer to the enclosed list of equipment needed, and feel free to contact us if you have any questions!")
    } else {
        letters.append("\(String(describing: allPlayers[i]["guardianNames"]!)), we would like to welcome \(String(describing: allPlayers[i]["firstName"]!)) \(String(describing: allPlayers[i]["lastName"]!)) to \(String(describing: allPlayers[i]["team"]!))! The first practice will be held \(String(describing: allPlayers[i]["practiceTime"]!))! Please refer to the enclosed list of equipment needed, and feel free to contact us if you have any questions!")
    }
}

// Now that the letters are all stored in a collection, lets print them! Now we're done? :)
for i in 0..<letters.count {
    print(letters[i]) // Check to see if each letter is there... print ("\(i + 1) \(letters[i])")
    
}
