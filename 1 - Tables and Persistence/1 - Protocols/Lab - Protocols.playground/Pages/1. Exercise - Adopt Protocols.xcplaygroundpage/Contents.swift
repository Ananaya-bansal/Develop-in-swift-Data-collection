/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
//class Human {
//    var name : String
//    var age : Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//let person = Human(name: "Ana", age: 10)
//let person1 = Human(name: "na", age: 10)
//print(person1)

import Foundation

//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
//class Human : CustomStringConvertible {
//    var description: String{
//        return("my name is \(name) and age is \(age)")
//    }
//    var name : String
//    var age : Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//let person = Human(name: "Ana", age: 10)
//let person1 = Human(name: "na", age: 10)
//print(person1)

//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
//class Human : CustomStringConvertible , Equatable {
//    static func == (lhs: Human, rhs: Human) -> Bool {
//        lhs.name == rhs.name && lhs.age == rhs.age
//        
//    }
//    
//    var description: String{
//        return("my name is \(name) and age is \(age)")
//    }
//    var name : String
//    var age : Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//let person = Human(name: "Ana", age: 10)
//let person1 = Human(name: "na", age: 10)
//print(person1 != person)


//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
//class Human : CustomStringConvertible , Equatable , Comparable{
//    static func < (lhs: Human, rhs: Human) -> Bool {
//        lhs.age < rhs.age
//    }
//    
//    static func == (lhs: Human, rhs: Human) -> Bool {
//        lhs.name == rhs.name && lhs.age == rhs.age
//        
//    }
//    
//    var description: String{
//        return("my name is \(name) and age is \(age)")
//    }
//    var name : String
//    var age : Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//let person = Human(name: "Ana", age: 10)
//let person1 = Human(name: "na", age: 6)
//print(person1 != person)
//
//let people = [person , person1]
//let sorted = people.sorted(by: >)
//for p in people {
//    print(p)
//}
//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
class Human : CustomStringConvertible , Equatable , Comparable , Codable{
    static func < (lhs: Human, rhs: Human) -> Bool {
        lhs.age < rhs.age
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        lhs.name == rhs.name && lhs.age == rhs.age
        
    }
    
    var description: String{
        return("my name is \(name) and age is \(age)")
    }
    var name : String
    var age : Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    
}

let person = Human(name: "Ana", age: 10)

let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(person),
    let jsonString = String(data: jsonData, encoding : .utf8 ){
        print(jsonString)
    }
let person1 = Human(name: "na", age: 6)
print(person1 != person)

let people = [person , person1]
let sorted = people.sorted(by: >)
for p in people {
    print(p)
}

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
