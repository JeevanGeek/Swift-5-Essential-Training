//: [Previous](@previous)

// Create 2 variables called characterName and weaponClassification and assign them string values of your choice.
var characterName = "X"
var weaponClassification = "Sword"

// Use the += operator to add a nickname string onto characterName.
var nickname = " Fist"
characterName += nickname

// Create a variable called currentMana and assign it a decimal value.
var currentMana = 5.0

// Create another variable called manaPercentage and assign it currentMana divided by 100, then explicitly convert it to a string.
var manaPercentage = String(currentMana / 100)

// Create a variable called debugStats and use string interpolation to lay out your character stats in a creative way. (HINT: use \n to create line breaks)
var debugStats = "Name: \(characterName)\nWeapon: \(weaponClassification)\nMana: \(manaPercentage)%"

// Create 2 boolean variables called questAccepted and canQuest respectively and assign them values of your choice.
var questAccepted = true
var canQuest = false

// Use the AND (&&) operator to evaluate if questAccepted and canQuest are both true and store it in a variable called questStatus.
var questStatus = questAccepted && canQuest

// Add an interpolated string that includes questStatus to debugStats using the append method and print out debugStats.
debugStats.append(contentsOf: "\nStatus: \(questStatus)")
print(debugStats)

//: [Next](@next)
