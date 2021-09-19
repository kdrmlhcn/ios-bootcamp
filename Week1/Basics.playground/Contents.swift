import UIKit

var greeting = "Hello, playground"

// Don't required to assign a value for let while declaring, you can assign a value after declared constant
private let property1: String = "Constant"
private var property2: String = "Variable"

print(property1)
print(property2)

// This is a compile-time error: property1 cannot be changed.
//property1 = "Try to change"

property2 = "Property 2 changed successfully"
print(property2)

print("Property2: \(property2)")

let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8

//let cannotBeNegative: UInt8 = -1 // UInt8 can't store negative numbers, and so this will report an error

//let tooBig: Int8 = Int8.max + 1 // Int8 can't store a number larger than its maximum value, and so this will also report an error

var timestamp: Int64

var pi: Float = 3.4
var currency = 8.58 // By default it's double

var value_float = 0.8
var value_integer = 2

var result: Double = value_float / Double(value_integer)

String(value_float)
Int(value_float)

typealias DefaultHeaderSize = UInt16
var headerValue = DefaultHeaderSize.min

var flag: Bool = true

func getInfo() -> (String, String) {
    return ("title", "subtitle")
}

let info = getInfo()
print(info)

func getInfoData() -> Information {
    return Information(title: "title", subTitle: "Subtitle")
}

struct Information {
    let title: String
    let subTitle: String
}

let infoData = getInfoData()
print(infoData)
print(infoData.title)

let optionalValue: String? = "S"
print("optional: \(optionalValue)")

var SurveyAnswer: String?
print("Survey Answer: \(SurveyAnswer)")

func test(_ arg: String? = nil) -> String {
    guard let value = arg else { return "Missing Argument Value" }
    print("value: \(value)")
    return value.uppercased()
    
    /*if let value = arg {
        print("value: \(value)")
        return value.uppercased()
    }
    return "Missing Argument Value"*/
}

print("result: \(test("deneme"))")

var testVariable: Int = 3 // Type Safe
var testVariable2 = 3 // Type Inference

var integerArray = [1, 2, 3, 4]
for (index, element) in integerArray.enumerated() {
  print("Item \(index): \(element)")
}

let allowedEntry = false
if !allowedEntry {
    print("Access Denied")
}

var string1 = "test "
var string2 = "test"

func stringOperation() -> Bool {
    let first = string1.trimmingCharacters(in: CharacterSet.init(charactersIn: " "))
    let second = string2.trimmingCharacters(in: CharacterSet.init(charactersIn: " "))
    
    return first == second
}

stringOperation()

var statement = "test flight hello world"
let x = statement.split(separator: " ")

for item in x {
    print(item)
}
