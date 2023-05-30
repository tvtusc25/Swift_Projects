//
//  linkedlist.swift
//  
//
//  Created by Trey Tuscai on 3/20/22.
//

import Foundation

//generic Node structure that is comparable
class Node<T: Comparable>: Comparable
{
    //data and next values
    var data: T
    var next: Node<T>?
    
    //constructor
    public init(data: T, next: Node<T>? = nil)
    {
        self.data = data
        self.next = next
    }
}

//comparable function
func < <T: Comparable>(lhs: Node<T>, rhs: Node<T>) -> Bool
{
    return lhs.data < rhs.data
}

//equatable function
func == <T: Comparable> (lhs:Node<T>, rhs:Node<T>) -> Bool
{
    return lhs.data == rhs.data
}

//prints the int value of a Node
func printInt<T>(_ data: T)
{
    let a = data
    print("Value: \(a as! Int)")
}

//prints the float value of a Node
func printFloat<T>(_ data: T)
{
    let a = data
    print("Value: \(a as! Float)")
}

//linkedlist structure
struct LinkedList<T: Comparable>
{
    //head and tail values
    var head: Node<T>?
    var tail: Node<T>?
    //size of list
    private var size: Int = 0
    
    //push Node onto the list
    mutating func ll_push(_ data: T)
    {
        //head is equal to new Node
        head = Node(data: data, next: head)
        
        //if tail is nil it is equal to head
        if tail == nil
        {
            tail = head
        }
        //increment size
        size += 1
    }
    
    //pop Node off the list
    @discardableResult mutating func ll_pop() -> T?
    {
        defer
        {
            //head is equal to the next Node
            head = head?.next
            
            //if head is nil so is tail
            if head == nil
            {
                tail = nil
            }
            //decrement size
            size -= 1
        }
        return head?.data
    }
    
    //add Node to end of list
    mutating func ll_append(_ data: T)
    {
        //create new Node
        let newNode = Node(data: data)
        //tail's next Node is equal to new Node
        tail?.next = newNode
        //tail is equal to newNode
        tail = newNode
        //increment size
        size += 1
    }
    
    //remove Node with specific value
    @discardableResult mutating func ll_remove(_ target: T) -> T?
    {
        //if head is not nil
        if(head != nil)
        {
            //current Node is equal to head
            var currentNode = head
            //if current Node has the target value
            if(currentNode?.data == target)
            {
                //head is equal to the next Node
                head = head?.next
                //decrement size
                size -= 1
                return currentNode?.data
            }
            else
            {
                //previous Node is equal to head
                var prevNode = head
                //while current Node is not nil and does not have the target value
                while currentNode?.data != nil && currentNode?.data != target
                {
                    //iterate through list
                    prevNode = currentNode
                    currentNode = currentNode?.next
                }
                //if current Node is not equal to nil then target value must have been found
                if(currentNode != nil)
                {
                    //previous Node's next is equal to current Node's next
                    prevNode?.next = currentNode?.next
                    //decrement size
                    size -= 1
                    return currentNode?.data
                }
            }
        }
        return nil
    }
    
    //return size of list
    mutating func ll_size() -> Int
    {
        return size
    }
    
    //print the list
    mutating func ll_map(mapfunc: (T) -> Void)
    {
        //temp is equal to head
        var tmp = head
        //iterate through list and print each value
        while (tmp != nil)
        {
            mapfunc(tmp!.data)
            tmp = tmp?.next
        }
    }
}


//testing
/*var list = LinkedList<Int>()

list.ll_push(10)
list.ll_push(22)
list.ll_push(34)
list.ll_push(56)
list.ll_push(78)
list.ll_pop()
list.ll_pop()
list.ll_append(5)
list.ll_remove(22)
list.ll_remove(34)
print(list.ll_size())
list.ll_map(mapfunc: printInt)*/

var list = LinkedList<Float>()

list.ll_push(10.0)
list.ll_push(22.0)
list.ll_push(34.0)
list.ll_push(56.0)
list.ll_push(78.0)
list.ll_pop()
list.ll_pop()
list.ll_append(5.0)
list.ll_remove(22.0)
list.ll_remove(34.0)
print(list.ll_size())
list.ll_map(mapfunc: printFloat)


