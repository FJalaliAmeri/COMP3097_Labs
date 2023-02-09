func greet (name: String) -> Void{
    print("Hello \(name)! This is Lab 2")
}

greet(name:"Farshad Jalali Ameri")

func area(width w:Int, height h:Int)->Int{
    var res = 0
    res = w*h
    return res
}

print(area(width:1, height:2))

func area2(_ w:Int,_ h:Int)->Int{
    var res = 0
    res = w*h
    return res
}

print(area2(1,2))

func calculator(a:Int, b:Int, op:String)->Int{

    func plus(a:Int, b:Int)-> Int {return a+b}
    func minus(a:Int, b:Int)-> Int {return a-b}
    func multi(a:Int, b:Int)-> Int {return a*b}
    
    switch op{
        case "+":
            return plus(a: a, b: b)
        case "-":
            return minus(a: a, b: b)
        case "*":
            return multi(a: a, b: b)
        default:
            return 0
    }
}

print(calculator(a: 2, b:5, op:"*"))
