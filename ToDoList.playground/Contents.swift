enum Status {
    case Complete
    case notComplete
}

struct toDoList {
    var task : String
    var date : Any
    var status : Status
    
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
        // if for error handling
        if (index <= lst2.count - 1){
        lst2 [index].task = elemnt
    } else {
        print("the task not found")
    }
        // function to remove value .
    }
    func remov(index :Int) {
        // if for error handling
        if (index <= lst2.count - 1){
        lst2.remove(at: index)
        } else {
            print("Cannot find item")
        }}
        // function to display all values .
    
    func display() {
        for i in lst2 {
            print("Task : \(i.task), Date : \(i.date), Status : \(i.status)")
        }
    
    }
    }

var test1 = toDoList(task: "Home Work",  date: "16/11/2020", status: .notComplete )
var test2 = toDoList(task: "Fix The Car",  date: "20/10/2021", status: .Complete)

var lst1 = List()
lst1.add2(item: test1)
lst1.add2(item: test2)

lst1.add2(item: toDoList(task: "Drink Coffee",  date: "20/10/2019", status:.Complete ))
lst1.add2(item: toDoList(task: "Sleep ",  date: "20/10/2017", status:.notComplete ))


//print(lst1.lst2[3])
lst1.edit(index: 7, elemnt: "Meeting")
lst1.remov(index: 6)
//print(test1)
lst1.display()

