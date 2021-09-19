import UIKit

var stringArray = ["String", "world"]
stringArray.first
stringArray.last

struct TestStruct: Equatable, Hashable {
    let property: String
}

class XX: Equatable {
    var pr1: String = ""
    var pr2: String = ""
    
    static func == (lhs: XX, rhs: XX) -> Bool {
        return lhs.pr1 == rhs.pr1 && lhs.pr2 == rhs.pr2
    }
}

let firstItem = XX()
let secondItem = XX()

if  firstItem == secondItem {
    
}

var testStructArray = [TestStruct(property: "Test"), TestStruct(property: "Test"), TestStruct(property: "Test"), TestStruct(property: "Test")]
var setStruct = Set<TestStruct>()
setStruct.insert(TestStruct(property: "Test"))
setStruct.insert(TestStruct(property: "Test"))
setStruct.insert(TestStruct(property: "Test"))

for item in setStruct {
    print("item: \(item.property)")
}

var dictionary = [String: String]()
var dictionary2 = Dictionary<String, String>()

dictionary["item"] = "esya"
dictionary["table"] = "masa"

print(dictionary)
print(dictionary["item"])
