// //Создать класс родитель и 2 класса наследника
class Person 
{
    var name: String
    init(name: String) 
    {
        self.name = name
    }
    func introduce() 
    {
        print("Hello")
    }
}

class Student: Person 
{
    override func introduce() 
    {
        print("Hello! I am student!")
    }
}

class Teacher: Person 
{
    override func introduce() 
    {
        print("Hello. I am teacher.")
    }
}

let student = Student(name: "Ivan")
student.introduce()
let teacher = Teacher(name: "Boris Nikolaevich")
teacher.introduce()

//Создать класс *House* в нем несколько свойств - *width*, *height* и несколько методов: *create*(выводит площадь),*destroy*(отображает что дом уничтожен)
class House 
{
    var width: Int
    var height: Int
    init(width: Int, height: Int) 
    {
        self.width = width
        self.height = height
    }
    func create() 
    {
        let area = width * height
        print("\(area) m^2")
    }
    func destroy() {
        print("House has been destroyed =(")
    }
}

let house=House(width: 10, height: 15)
house.create()
house.destroy()
//Создайте класс с методами, которые сортируют массив учеников по разным параметрам
struct Student2 {
    var name: String
    var age: Int
    var group: Int
    var specialty: String
}

class Sorter 
{
    func sort_by_name(students: [Student2]) -> [Student2] 
    {
        return students.sorted(by: { $0.name < $1.name })
    }
    func sort_by_age(students: [Student2]) -> [Student2] 
    {
        return students.sorted(by: { $0.age < $1.age })
    }
    func sort_by_group(students: [Student2]) -> [Student2] 
    {
        return students.sorted(by: { $0.group < $1.group })
    }
    func sort_by_specialty(students: [Student2]) -> [Student2] 
    {
        return students.sorted(by: { $0.specialty < $1.specialty })
    }
}

var students = [Student2]()
let student1 = Student2(name: "Thomas", age: 21, group: 9237, specialty: "lawyer")
students.append(student1)
let student2 = Student2(name: "Isabella", age: 22, group: 8382, specialty: "doctor")
students.append(student2)
let student3 = Student2(name: "Alex", age: 20, group: 1398, specialty: "programmer")
students.append(student3)

let sorter = Sorter()
students = sorter.sort_by_name(students: students)
print("Sorted by name:")
for student in students 
{
    print(student)
}

students = sorter.sort_by_age(students: students)
print("Sorted by age")
for student in students 
{
    print(student)
}

students = sorter.sort_by_group(students: students)
print("Sorted by group:")
for student in students {
    print(student)
}

students = sorter.sort_by_specialty(students: students)
print("Sorted by specialty:")
for student in students {
    print(student)
}
//Написать свою структуру и класс, и пояснить в комментариях - чем отличаются структуры от классов
struct Worker 
{
    var name: String
    var age: Int
    var position: String
    func printInfo() 
    {
        print("Name: \(name), age: \(age), position: \(position)")
    }
}

class Car 
{
    var brand: String
    var model: String
    
    init(brand: String, model: String) 
    {
        self.brand = brand
        self.model = model
    }
    func printInfo() 
    {
        print("brand: \(brand), model: \(model)")
    }
}

// Классы могут наследовать свойства других классов, для структур такого не предусмотрено.
// При передачи структуры создается копия, при передачи классов используются ссылки
// Структуры нельзя изменить после объявления (let), классы можно
// Обычно классы использзуются для более сложных объектов, когда необходимо управлять их состоянием или поведением. Структуры используются для более простых объектов.

//Напишите простую программу, которая отбирает комбинации в покере из рандомно выбранных 5 карт
//Сохраняйте комбинации в массив
//Если выпала определённая комбинация - выводим соответствующую запись в консоль
//Результат в консоли примерно такой: 'У вас бубновый стрит флеш'.
