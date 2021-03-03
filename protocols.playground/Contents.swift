import UIKit

protocol Person {
    var firstName: String { get }
    var lastName: String { get }
    func fullName()
}

extension Person {
    func fullName() {
        print("protocol \(firstName) \(lastName)")
    }
}

struct Lecturer: Person {
    var firstName: String
    var lastName: String
}

struct Student: Person {
    var firstName: String
    var lastName: String

    func fullName() {
        print("Student \(firstName)")
    }

    func shouldFinishHomework() {
        print("Only if it's the last day")
    }
}

var lecturer = Lecturer(firstName: "John", lastName: "Doe")
let student = Student(firstName: "Jane", lastName: "Doe")

lecturer.fullName()
student.fullName()
student.shouldFinishHomework()

let arrayOne: [Person] = [lecturer, student]
let studentOne = arrayOne[1]

