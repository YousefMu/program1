struct toDoList {
    var name : String
    var age : Int
    var date : Any
    var isComplete : Bool
    
}

class List {
    
    var lst2 : [toDoList]
    init(){
        lst2 = []
        
        // function to add value .
    }
    func add2(item : toDoList) {
        lst2.append(item)
        
        // function to update value .
    }
    func edit(index : Int , elemnt : String) {
        lst2 [index].name = elemnt
        
        // function to remove value .
    }
    func remov(index :Int) {
        lst2.remove(at: index)
        
        // function to display all values .
    }
    func display() {
        for i in lst2 {
            print(i.self)
        }
        
    }
    
}

var test1 = toDoList(name: "Yousef", age: 28, date: "16/11/1994", isComplete: false)
var test2 = toDoList(name: "mohammad", age: 17, date: "20/10/2005", isComplete: false)

var lst1 = List()
lst1.add2(item: test1)
lst1.add2(item: test2)

lst1.add2(item: toDoList(name: "yazan", age: 90, date: "20/10/2005", isComplete: false))
lst1.add2(item: toDoList(name: "abdullah", age: 199, date: "20/10/2005", isComplete: false))


//print(lst1.lst2[3])
lst1.edit(index: 1, elemnt: "naser")
lst1.remov(index: 0)
//print(test1)
lst1.display()
