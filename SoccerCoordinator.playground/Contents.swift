//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// teams: Dragons, Sharks, and Raptors.
// 18 children split evenly
// Name, height (in inches), whether or not they have played soccer before, and their guardians’ names.

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

for player in players {
    print(player["name"])
}



