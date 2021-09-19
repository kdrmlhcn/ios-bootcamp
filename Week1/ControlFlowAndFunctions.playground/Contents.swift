import UIKit

var greeting = "Hello, playground"

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

var array = [1, 2, 2, 4, 5, 5, 8, 6]

for i in 0..<(array.count - 1) {
    if array[i] != array[i + 1] {
        continue
    }
    print("...")
}

for item in array {
    print(item)
}

var index = 0
while index < 10 {
    print("index: \(index)")
    index += 1
}

index = 0
repeat {
    print("index: \(index)")
    index += 1
} while index < 10

var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}

enum ActionType {
    case pressed
    case longPressed
    case tapped
    case clicked
}

func doSomething(with actionType: ActionType) {
    switch actionType {
    case .pressed:
        print("Pressed")
    case .longPressed:
        print("Long pressed")
    case .tapped, .clicked:
        print("Clicked")
    default:
        break
    }
}

doSomething(with: ActionType.longPressed)
doSomething(with: ActionType.tapped)

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    print("Hello \(name)!")

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }

    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
