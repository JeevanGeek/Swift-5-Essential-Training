//: [Previous](@previous)

// Create an enumeration called ActionError that adopts the Error protocol with three cases - InsufficientMP, OutOfRange, and UnknownError
enum ActionError: Error {
    case InsufficientMP, OutOfRange, UnknownError
}

// Declare a function called attackEnemy that takes in an integer named mp and a double named distance as parameters and returns an optional boolean.
// Mark attackEnemy as a throwable function
func attackEnemy(mp: Int, distance: Double) throws -> Bool? {
    // Add two guard statements - if mp is less than 10 throw InsufficientMP, if distance is greater than 5.89 throw OutOfRange
    guard mp > 10 else {
        throw ActionError.InsufficientMP
    }
    guard distance < 5.89 else {
        throw ActionError.OutOfRange
    }

    // If both guard statements pass, return true
    return true
}

// Use a *do-catch statement to call attackEnemy and handle each error case individually
do {
    try attackEnemy(mp: 20, distance: 5.5)
    print("Attacked")
} catch ActionError.InsufficientMP {
    print("Insufficient MP")
} catch ActionError.OutOfRange {
    print("Out of range")
} catch ActionError.UnknownError {
    print("Unnknown error detacted")
} catch {
    print("Something went wrong")
}

// Unwrap the optional return value from attackEnemy using an if-let statement
if let attack = try? attackEnemy(mp: 30, distance: 5.5) {
    print("Status: \(attack)")
}

//: [Next](@next)
