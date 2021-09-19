import UIKit

var greeting = "Hello, playground"

struct SampleStruct {
    var property: String = ""
}

class SampleClass {
    var property: String = ""
    init(property: String = "") {
        self.property = property
    }
}

var sampleStructFirst = SampleStruct(property: "TEST1")
var sampleStructSecond = SampleStruct()
sampleStructSecond = sampleStructFirst
sampleStructSecond.property = "TEST2"

print("sampleStructFirst: \(sampleStructFirst)")
print("sampleStructSecond: \(sampleStructSecond)")

var sampleClassFirst = SampleClass(property: "TEST_CLASS_1")
var sampleClassSecond = SampleClass()
sampleClassSecond = sampleClassFirst
sampleClassSecond.property = "TEST_CLASS_2"

print("sampleClassFirst: \(sampleClassFirst.property)")
print("sampleClassSecond: \(sampleClassSecond.property)")

class BaseClass {
    let baseProperty: String = ""
}

class Teacher {
    let name: String
    let surname: String
    
    init(name: String = "", surname: String = "") {
        self.name = name
        self.surname = surname
    }
}

class MathProf: Teacher {
}

class Manager: Teacher {
}

let x = MathProf(name: "Melih", surname: "Can")
