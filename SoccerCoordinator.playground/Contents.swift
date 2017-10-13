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


for i in 0..<hasExperience.count {
    let player = players[i]
    if teamDragons.count == teamSharks.count && teamRaptors.count == teamDragons.count {
        teamDragons.append(player)
    } else if teamDragons.count > teamSharks.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}


// For loop to go through and determine where to assign unexperienced players I figured after we ensured the amount of experienced players are the same accross the same three teams it would be then easy to calculate the average height, and append the unexperienced players accordingly. I've nestled the logic to check the average height of each team within the for loop as I was having issues having the global variables update outside of the scope.

for i in 0..<noExperience.count {
    let player = players[i]
    // Created empty arrays to store the height for each team.
    var teamDragonsHeight: [Int] = []
    var teamSharksHeight: [Int] = []
    var teamRaptorsHeight: [Int] = []
    
    // These for loops will append the height of each player into their team.
    for i in 0..<teamDragons.count {
        let playerHeight = teamDragons[i]["height"] as! Int
        teamDragonsHeight.append(playerHeight)
    }
    
    for i in 0..<teamSharks.count {
        let playerHeight = teamSharks[i]["height"] as! Int
        teamSharksHeight.append(playerHeight)
    }
    
    for i in 0..<teamRaptors.count {
        let playerHeight = teamRaptors[i]["height"] as! Int
        teamRaptorsHeight.append(playerHeight)
    }
    
    // Variables to store the total height and average height of each team.
    var sumDragons: Int = 0
    var avgDragonsHeight: Double = 0
    var sumSharks: Int = 0
    var avgSharksHeight: Double = 0
    var sumRaptors: Int = 0
    var avgRaptorsHeight: Double = 0
    
    // These for loops determine what the average height of each team is.
    for number in teamDragonsHeight {
        sumDragons += number
        let teamPlayers = teamDragons.count
        avgDragonsHeight = Double(sumDragons) / Double(teamPlayers)
    }
    
    for number in teamSharksHeight{
        sumSharks += number
        let teamPlayers = teamSharks.count
        avgSharksHeight = Double(sumSharks) / Double(teamPlayers)
    }
    
    for number in teamRaptorsHeight{
        sumRaptors += number
        let teamPlayers = teamSharks.count
        avgRaptorsHeight = Double(sumRaptors) / Double(teamPlayers)
        
    }
    
    // Since we will be dividing the total height and number of players the format needs to be in a double as it will return a double value
    
    // Logic determines where to place the unexperienced players and is based on the average height.
    if avgDragonsHeight.truncatingRemainder(dividingBy: avgSharksHeight) <= 1.5 && teamDragons.count <= teamRaptors.count {
        teamDragons.append(player)
    } else if  avgDragonsHeight.truncatingRemainder(dividingBy: avgSharksHeight) >= 1.5 && teamSharks.count <= teamRaptors.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
        
    }
    
}

// I'm repeating the logic for the averages because once again the scope is preventing me from effectively printing the accurate values for the averages... the comments in this section repeat those from above, excluding the logic for placing unexperienced players.

var teamDragonsHeight: [Int] = []
var teamSharksHeight: [Int] = []
var teamRaptorsHeight: [Int] = []

// These for loops will append the height of each player into their team.
for i in 0..<teamDragons.count {
    let playerHeight = teamDragons[i]["height"] as! Int
    teamDragonsHeight.append(playerHeight)
}

for i in 0..<teamSharks.count {
    let playerHeight = teamSharks[i]["height"] as! Int
    teamSharksHeight.append(playerHeight)
}

for i in 0..<teamRaptors.count {
    let playerHeight = teamRaptors[i]["height"] as! Int
    teamRaptorsHeight.append(playerHeight)
}

// Variables to store the total height and average height of each team.
var sumDragons: Int = 0
var avgDragonsHeight: Double = 0
var sumSharks: Int = 0
var avgSharksHeight: Double = 0
var sumRaptors: Int = 0
var avgRaptorsHeight: Double = 0

// These for loops determine what the average height of each team is.
for number in teamDragonsHeight {
    sumDragons += number
    let teamPlayers = teamDragons.count
    avgDragonsHeight = Double(sumDragons) / Double(teamPlayers)
}

for number in teamSharksHeight{
    sumSharks += number
    let teamPlayers = teamSharks.count
    avgSharksHeight = Double(sumSharks) / Double(teamPlayers)
}

for number in teamRaptorsHeight{
    sumRaptors += number
    let teamPlayers = teamSharks.count
    avgRaptorsHeight = Double(sumRaptors) / Double(teamPlayers)
    
}

// Section that prints the total number of players and average height values for each team.

print("The amount of players for Team Dragons is \(teamDragons.count) and the average height for Team Dragons is \(avgDragonsHeight)")
print("The amount of players for Team Sharks is \(teamSharks.count) and the average height for Team Sharks is \(avgSharksHeight)")
print("The amount of players for Team Raptors is \(teamRaptors.count) and the average height for Team Raptors is \(avgRaptorsHeight)")

// So now that we have all the teams within the same average height, and experience level lets add new values to each dictionary to signify which team each player belongs to

for i in 0..<teamDragons.count {
    teamDragons[i]["team"] = "Team Dragons"
}

for i in 0..<teamSharks.count {
    teamSharks[i]["team"] = "Team Sharks"
}

for i in 0..<teamRaptors.count {
    teamRaptors[i]["team"] = "Team Raptors"
}

let allPlayers: [[String:Any]] = teamDragons + teamSharks + teamRaptors

allPlayers.count

// Now that we have the teams and all of the other information relevant to the assignment, lets create the letters!

var letters: [String] = []

for i in 0..<allPlayers.count {
    
    if allPlayers[i]["team"] as? String == "Team Dragons"  {
        letters.append("\(String(describing: allPlayers[i]["guardianNames"]!)), we would like to welcome \(String(describing: allPlayers[i]["firstName"]!)) \(String(describing: allPlayers[i]["lastName"]!)) to \(String(describing: allPlayers[i]["team"]!))! The first practice will be held March 17, at 1:00 PM! Please refer to the enclosed list of equipment needed, and feel free to contact us if you have any questions!")
    } else if allPlayers[i]["team"] as? String == "Team Sharks" {
        letters.append("\(String(describing: allPlayers[i]["guardianNames"]!)), we would like to welcome \(String(describing: allPlayers[i]["firstName"]!)) \(String(describing: allPlayers[i]["lastName"]!)) to \(String(describing: allPlayers[i]["team"]!))! The first practice will be held March 17, at 3:00 PM! Please refer to the enclosed list of equipment needed, and feel free to contact us if you have any questions!")
    } else {
        letters.append("\(String(describing: allPlayers[i]["guardianNames"]!)), we would like to welcome \(String(describing: allPlayers[i]["firstName"]!)) \(String(describing: allPlayers[i]["lastName"]!)) to \(String(describing: allPlayers[i]["team"]!))! The first practice will be held March 18, at 1:00 PM! Please refer to the enclosed list of equipment needed, and feel free to contact us if you have any questions!")
    }
}

// Now that the letters are all stored in a collection, lets print them! Now we're done? :)
for i in 0..<letters.count {
    print(letters[i])
}
