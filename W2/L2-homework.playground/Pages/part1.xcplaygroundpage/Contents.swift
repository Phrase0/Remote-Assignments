//1.Declare a class Animal with a property gender and a method eat(). The data type of should be enum Gender as below and when you call eat() method, it will print I eat everything!

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    func eat(){
        print("I eat everything!")
    }
    
    init(gender: Gender){
        self.gender = gender
    }
}
Animal(gender: .female)

//2.Declare three classes: Elephant, Tiger, Horse that inherits from Animal and override the eat() method to print what they usually eat.

class Elephant:Animal{
    override func eat() {
        print("I usually eat fruit")
    }
}
Elephant(gender: .male)

class Tiger:Animal{
    override func eat() {
        print("I usually eat meat")
    }
}

class Horse:Animal{
    override func eat() {
        print("I usually eat hay")
    }
}

//3.Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger, elephant, and horse are instances of class Tiger, Elephant, and Horse, respectively.

class Zoo {
var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}
let tiger = Tiger(gender: .male)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .undefined)
var zoo = Zoo(weeklyHot:tiger)
zoo.weeklyHot

zoo = Zoo(weeklyHot: elephant)
zoo.weeklyHot

zoo = Zoo(weeklyHot: horse)
zoo.weeklyHot


/*
 4.What’s the difference between Class and Struct?
 
 Class 可以有子類別跟父類別，Struct 沒有。
 Class 是 Reference type，會參考到某塊記憶體；Struct 則是 Value Type。
 Class儲存與操作資料，struct儲存簡單資料。
 參考資料：https://www.tutorialspoint.com/what-is-the-difference-between-class-and-structure-in-swift

 -----------
 
 5.What does Initilizer do in class and struct?
 
 [class]
 Init(Initialize):產生物件時要執行的初始化程式碼
 * Init是一個方法
 * Init方法要做的事情：設定初始值，讓物件可以順利運作
 * 所有的屬性都要有初始值（值可放在屬性或Init內）
 * 要先設定初始值，才能呼叫自己類別的方法
 * self:東西自己=> 當 init 的參數和 property 同名，利用 self 區分 property & 參數
 
 [struct]
 已有default initializer，不一定要再寫一個init
 In Swift, all structs come with a default initializer.This is called the memberwise initializer.
 A memberwise initializer assigns each property in the structure to self. This means you do not need to write an implementation for an initializer in your structure.
 參考資料：
 1.https://www.codingem.com/swift-how-to-initialize-a-struct/
 2.https://www.programiz.com/swift-programming/initializer
 3.https://stackoverflow.com/questions/64829918/why-swift-class-need-init-but-not-swift-struct
 
 -----------
 
 6.What’s the difference between reference type and value type?
 
[reference type(參考型別)]
 當 sizeClass1 = sizeClass2時，參考相同記憶體，值會相同
 var sizeClass1 = SizeClass()
 var sizeClass2 = sizeClass1
 sizeClass1.width = 100
 sizeClass2.width

[value type(實質型別)]
 當 sizeClass1 = sizeClass2時，參考不同值，值會不同
 var sizeStruct1 = SizeStruct()
 var sizeStruct2 = sizeStruct1
 sizeStruct1.width = 100
 sizeStruct2.width

 -----------
 
 7.What’s the difference between instance method and type method?
 
 There are two kinds of inbuilt methods: type methods and instance methods.
 Type methods are associated with types.
 Instance methods are associated with values.
 參考資料：
 1.https://cocoacasts.com/swift-fundamentals-what-is-the-difference-between-instance-methods-and-type-methods-in-swift
 2.https://documentation.softwareag.com/apama/v10-11/apama10-11/apama-webhelp/index.html#page/apama-webhelp/re-ApaEplRef_type_methods_and_instance_methods.html
 
 -----------
 
 8.What does self mean in an instance method and a type method respectively?
 [instance method]
 Every instance of a type has an implicit property called self, which is exactly equivalent to the instance itself. You use the self property to refer to the current instance within its own instance methods.
 
[type method]
 Within the body of a type method, the implicit self property refers to the type itself, rather than an instance of that type. This means that you can use self to disambiguate between type properties and type method parameters, just as you do for instance properties and instance method parameters.
 參考資料：https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methods/
 */

 

