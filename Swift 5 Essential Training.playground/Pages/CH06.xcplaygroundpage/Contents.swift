//: [Previous](@previous)

// Create a class called Item and declare properties for name, price
class Item {
    var name: String
    var price: Int

    // Add an optional BonusEffect property to Item named secret
    var secret: BonusEffect?

    // Declare a default initializer and set the instance properties
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

// Create a struct called BonusEffect and declare an integer property named bonus
struct BonusEffect {
    var bonus: Int
}

// Create a new class called Inventory with an Items array property named storedItems
class Inventory {
    var storedItems: [Item]

    // Declare a default initializer that takes in an array of Items and assigns them to storedItems
    init(storedItems: [Item]) {
        self.storedItems = storedItems
    }
}

// Create a BonusEffect and two Item instances and assign the bonus effect as one items secret
var bonusEffect = BonusEffect(bonus: 10)
var cake = Item(name: "Cake", price: 100)
var pastry = Item(name: "Pastry", price: 50)
pastry.secret = bonusEffect

// Create an Inventory instance, initialize it with the item and weapon, and use optional chaining to unwrap one of the items bonus value
var inventory = Inventory(storedItems: [cake, pastry])
if let bonus = inventory.storedItems[1].secret?.bonus {
    print("There is a secret of \(bonus) bonus")
} else {
    print("There is no secret")
}

//: [Next](@next)
