//: [Previous](@previous)

// Create a type alias tuple called Attack with named values for name and damage
typealias Attack = (name: String, damage: Int)

// Write a simple function called attackEnemy with an integer parameter that prints out an interpolated string
func attackEnemy(damage: Int) {
    print("Your's damage is \(damage)")
}

// Write an overloaded version of attackEnemy with a parameter of type Attack that returns an string
func attackEnemy(attack: Attack) -> String {
    return "\(attack.name)'s damage is \(attack.damage)"
}

// Use both attackEnemy methods
attackEnemy(damage: 10)
var msg = attackEnemy(attack: ("Fist", 20))
print(msg)

// Create a type alias closure called AttackClosure that takes in an array of Attacks and returns void, then declare a test array of Attack values.
typealias AttackClosure = ([Attack]) -> Void
let testArray = [("Bishop", 30), ("Jones", 40), ("Kate", 50)]

// Write a function called fetchPlayerAttacks that has a closure parameter of type AttackClosure and no return value
func fetchPlayerAttacks(attackClosure: AttackClosure) {
    attackClosure(testArray)
}

// Call fetchPlayerAttacks and loop through the array inside the closure body to print out its tuple values
fetchPlayerAttacks { attack in
    for (name, damage) in attack {
        print("\(name)'s damage is \(damage)")
    }
}

//: [Next](@next)
