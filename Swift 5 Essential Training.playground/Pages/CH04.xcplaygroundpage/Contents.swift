//: [Previous](@previous)

// Create two optional string variable called lefthandWeapon and righthandWeapon. Assigning them initial values is at your discretion.
var lefthandWeapon: String? = "Sword"
var righthandWeapon: String?

// Use optional binding to unwrap both optionals in a single statement and debug both outcomes.
if let _ = lefthandWeapon, let _ = righthandWeapon {
    print("Ready for fight")
} else {
    print("One hand is empty")
}

// Create a dictionary called playerExp and assign it some key-value pairs of type string and integer.
var playerExp = ["Alice": 100, "Bob": 400, "Charlie": 600]

// Use a for-in loop to iterate over playerExp and capture the keys and values.
for (_, exp) in playerExp {
    // Add a guard statement inside the for-in loop to make sure each player is at least level 1 to proceed. Don't forget to include the continue keyword.
    guard exp > 10 else {
        print("Take rest")
        continue
    }

    // Use a switch statement to define the following cases: 6a. exp is equal to 32 6b. exp is between 200 and 500 6c. Use value binding to store exp and check that it is greater than 500 using the where keyword
    switch exp {
    case 32:
        print("Good")
    case 200 ... 500:
        print("Very Good")
    case let temp where temp > 500:
        print("Learn more")
    default:
        print("Invalid")
    }
}

//: [Next](@next)
