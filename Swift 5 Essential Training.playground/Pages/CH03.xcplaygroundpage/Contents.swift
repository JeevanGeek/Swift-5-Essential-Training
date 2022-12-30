//: [Previous](@previous)

// Create an array called shopItemsArray and fill it with a few strings, then create a dictionary called shopItemsDictionary with keys that match your array items, with prices for their values
var shopItemsArray = ["Apple, Banana", "Mango"]
var shopItemsDictionary = ["Apple": 100, "Banana": 50, "Mango": 75]

// Use the contains method to check if shopItemsArray has the item you want (make it an item that is not in the array)
var containWatermelon = shopItemsArray.contains("Watermelon")

// Use the insert method to add the missing item to shopItemsArray at an index you choose
shopItemsArray.insert("Watermelon", at: 1)

// Create a new variable called selectedItem and assign it an item from shopItemsArray by using subscript syntax.
var selectedItem = shopItemsArray[2]

// Create another variable called selectedItemPrice and use selectedItem and subscript syntax to access it's value from shopItemsDictionary
var selectedItemPrice = shopItemsDictionary[selectedItem]

// Create a set called fullArmorSet and assign it a few string values, then create a second set called currentArmorSet and assign it some, but not all, of the same values as fullArmorSet
var fullArmorSet: Set = ["Sword", "Gun", "Bomb"]
var currentArmorSet: Set = ["Gun"]

// Use the subtract method to find out which items currentArmorSet is missing for a complete set
var missingItem = fullArmorSet.subtracting(currentArmorSet)

// Create a tuple called armorPieceTuple and assign it named variables for name, cost, and canEquip, all with initial values. Then access the canEquip value with dot notation.
var armorPieceTuple = (name: "Sword", cost: 1000, canEquip: true)
armorPieceTuple.canEquip

//: [Next](@next)
