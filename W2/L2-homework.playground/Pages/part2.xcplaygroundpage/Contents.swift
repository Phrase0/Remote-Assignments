//1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
//● Please create an enum named Gasoline to model gasoline.
//● Every kind of gasoline has its price. Please create a method named getPrice in Gasoline enum that will return different prices depending on different gasoline.
//● Please establish raw values for Gasoline. The data type of raw value should be String. For example, Gasoline.oil92.rawValue should be “92”
import Darwin

enum Gasoline :String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    
    func getPrice(gasoline: Gasoline) -> Double{
        switch gasoline {
        case .oil92:
            return 100
        case .oil95:
            return 200
        case .oil98:
            return 300
        }
    }
}

/*● Please explain what enum associated value is and how it works.
 1. not limited to one type
 2. 0...>Custom values per case
 3. Label names for each value
 4. No default associated values
 */
//ex:
enum TwoDimensionalPoint {
    case origin
    case onXAxis(Double)
    case onYAxis(Double)
    case noZeroCoordinate(x: Double, y: Double)
}

//2.Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the value of a will be nil or Int. You should have learned how to deal with Optional.
//● People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.

class Pet{
    var name:String
    
    init(name:String){
        self.name = name
    }
}

class People{
    var pet:Pet?
    
    init(pet:Pet?){
        self.pet = pet
    }
}

//● Please create a People instance. Use guard let to unwrap the pet property and print its name.
let people = People(pet: pet)
let pet = Pet(name: "Kitty")

func petName(){
    guard let petName = people.pet?.name else {
        print("I don't have pet")
        return }
    print("My pet's name is \(petName)")
}
petName()

//● Please create another People instance. Use if let to unwrap the pet property and print its name.

if let petName = people.pet?.name{
    print("My pet's name is \(petName)")
}else{
    print("I don't have pet")
}


