import Foundation

class Person {
    public var name: String?
    public var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func showMyself(name: String, age: Int) -> String {
        return "My Name is \(name), And I'm \(age) Years Old Now."
    }

}

var P_Byung_jun: Person = Person(name: "Park Byung Chun", age: 523)

print(P_Byung_jun.age,P_Byung_jun.name)


print("Person : ", P_Byung_jun.showMyself(name: P_Byung_jun.name!, age: P_Byung_jun.age))

class Student : Person {
    var school: String?

    init(school: String) {
        super.init(name: "Yang", age: 17)
        self.school = school
    }

    func showMyself(name: String, age: Int, school: String) -> String {
        return "My Name is \(name), And I'm \(age) Years Old Now. And I'm Now In \(school)."
    }
}

var yeseong0412: Student = Student(school: "DGSW")

print(yeseong0412.age, yeseong0412.name, yeseong0412.school)

print("Super MEthod : ",yeseong0412.showMyself(name: yeseong0412.name!, age: yeseong0412.age))
print(yeseong0412.showMyself(name: yeseong0412.name!, age: yeseong0412.age, school: yeseong0412.school!))
