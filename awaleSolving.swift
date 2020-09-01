import UIKit

//UTILITIES
class Node<T> {
    var key: T?
    var next: Node?
}

class Stack<T> {
    
    private var top: Node<T>
    private var counter: Int = 0
    
    init() {
        top = Node<T>()
    }
    
    //the number of items - O(1)
    var count: Int {
        return counter
    }
    
    //add item to the stack - O(1)
    func push(withKey key: T) {
        //return trivial case
        guard top.key != nil else {
            top.key = key
            counter += 1
            return
        }
        
        //create new item
        let childToUse = Node<T>()
        childToUse.key = key
            
        //set new created item at top
        childToUse.next = top
        top = childToUse
        //set counter
        counter += 1
    }
    //remove item from the stack - O(1)
    func pop() {
        
        if self.count > 1 {
            top = top.next!
            //set counter
            counter -= 1
            
        }
        else {
            top.key = nil
            counter = 0
        }
    }
    
    //retrieve the top most item - O(1)
    func peek() -> Node<T> {
        return top
    }
    
    //check for value - O(1)
    func isEmpty() -> Bool {
        if self.count == 0 {
            return true
        }
        else {
            return false
        }
    }
}


struct Position {
    var nbGraine:Int
    var graine:[Int]
    init()
    {
        self.graine=Array(repeating: 0, count: 4)
    }
}

var rotation:Int

var plateau=Array(repeating: Array(repeating: Position(), count: 2), count: 2)


