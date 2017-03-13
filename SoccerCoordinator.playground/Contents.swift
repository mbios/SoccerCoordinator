var teamDragons: [[String: Any]] = []
var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []
var players: [[String: Any]] = []

players.append([
    "name": "Joe Smith",
    "height": 42,
    "experience": true,
    "guardian": "Jim and Jan Smith"])

players.append([
    "name": "Jill Tanner",
    "height": 36,
    "experience": true,
    "guardian": "Clara Tanner"])

players.append([
    "name": "Bill Bon",
    "height": 43,
    "experience": true,
    "guardian": "Sara and Jenny Bon"])

players.append([
    "name": "Eva Gordon",
    "height": 45,
    "experience": false,
    "guardian": "Wendy and Mike Gordon"])

players.append([
    "name": "Matt Gill",
    "height": 40,
    "experience": false,
    "guardian": "Charles and Sylvia Gill"])

players.append([
    "name": "Kimmy Stein",
    "height": 41,
    "experience": false,
    "guardian": "Bill and Hillary Stein"])

players.append([
    "name": "Sammy Adams",
    "height": 45,
    "experience": false,
    "guardian": "Jeff Adams"])

players.append([
    "name": "Karl Saygan",
    "height": 42,
    "experience": true,
    "guardian": "Heather Bledsoe"])

players.append([
    "name": "Suzane Greenberg",
    "height": 44,
    "experience": true,
    "guardian": "Henrietta Dumas"])

players.append([
    "name": "Sal Dali",
    "height": 41,
    "experience": false,
    "guardian": "Gala Dali"])

players.append([
    "name": "Joe Kavalier",
    "height": 39,
    "experience": false,
    "guardian": "Sam and Elaine Kavalier"])

players.append([
    "name": "Ben Finkelstein",
    "height": 44,
    "experience": false,
    "guardian": "Aaron and Jill Finkelstein"])

players.append([
    "name": "Diego Soto",
    "height": 41,
    "experience": true,
    "guardian": "Robin and Sarika Soto"])

players.append([
    "name": "Chloe Alaska",
    "height": 47,
    "experience": false,
    "guardian": "David and Jamie Alaska"])

players.append([
    "name": "Arnold Willis",
    "height": 43,
    "experience": false,
    "guardian": "Claire Willis"])

players.append([
    "name": "Phillip Helm",
    "height": 44,
    "experience": true,
    "guardian": "Thomas Helm and Eva Jones"])

players.append([
    "name": "Les Clay",
    "height": 42,
    "experience": true,
    "guardian": "Wynonna Brown"])

players.append([
    "name": "Herschel Krustofski",
    "height": 45,
    "experience": true,
    "guardian": "Hyman and Rachel Krustofski"])

for (i, player) in players.enumerated().reversed() {
    if (player["experience"] as! Bool) {
        switch (players.count % 3) {
        case 0: teamDragons += [players.remove(at: i)]
        case 1: teamSharks += [players.remove(at: i)]
        default: teamRaptors += [players.remove(at: i)]
        }
    }
}

for (i, player) in players.enumerated().reversed() {
    switch (players.count % 3) {
    case 0: teamDragons += [players.remove(at: i)]
    case 1: teamSharks += [players.remove(at: i)]
    default: teamRaptors += [players.remove(at: i)]
    }
}

func createLettersFor(players: [[String: Any]], teamName: String, matchDate: String) -> [String] {
    var letters: [String] = []
    for player in players {
        letters.append(createLetterFor(player: player, teamName: teamName, matchDate: matchDate))
    }
    return letters
}

func createLetterFor(player: [String: Any], teamName: String, matchDate: String) -> String {
    let guardian = player["guardian"] as! String
    let playerName = player["name"] as! String
    return "Dear \(guardian), \(playerName) is on \(teamName) with the first match on \(matchDate)"
}

var letters: [String] = []
letters += createLettersFor(players: teamDragons, teamName: "Dragons", matchDate: "March 17, 1pm")
letters += createLettersFor(players: teamDragons, teamName: "Sharks", matchDate: "March 17, 3pm")
letters += createLettersFor(players: teamDragons, teamName: "Raptors", matchDate: "March 18, 1pm")

for letter in letters {
    print(letter)
}