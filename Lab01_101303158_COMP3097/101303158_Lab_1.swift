let name:String 

name = "Farshad"

// name = "John" won't work (immutable value)

var num = 12
var exp = num * 12
var msg:String?

print("Welcome to Xcode, ", name, "!")
print("This is a value of num: \(num)")

// msg = "number is equal to " + num 
//Either type cast or \()

msg = "number is equal to " + String(num)
print(msg)

let pi = 3 + 0.14159 //This will be double (They are promoted)
print (pi)

let bin = 0b010101
let oct = 0o21
let hex = 0x12a
let dec = 1234

let number = 1.2565678e2
print(number)

let f = 1_000_000.00
print(f)

let t:(Int,String) = (1,"test") //Tuple
var a:Int, b:String
(a,b) = t

print(a,b)

//msg = nil
//print (msg)

if msg != nil {
    print(msg!.count)
}

var text = """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
"""
print(text.count)

var chars:[Character] = ["a", "b", "c"]
msg = String(chars)
print(msg)

msg?.append(String(chars))

for c in msg! {
    print(c)
}

var grade:String = "A"

switch grade {
    case "A":
        print("Amazing")
    case "B":
        print("Very Good")
    case "C":
        print("Could be better")
        
        
    default:
        print("No grade!")
}

var grade2:Int = 65

switch grade2 {
    case 80..<100:
        print("Amazing")
    case 70..<80:
        print("Very Good")
    case 60..<70:
        print("Could be better")
        
        
    default:
        print("No grade!")
}

let somePoint = (1,1)

switch somePoint {
    case (0,0):
        print("in the center")
    case (_,0):
        print("on X axis")
    case (0,_):
        print("on Y axis")
    case (-2...2,-3...3):
        print("in the field")
        fallthrough
        
    default:
        print("off the grid")
}

for d in 1...5{
    print(d)
}

for d in 1..<5{
    print(d)
}

gameLoop: while true{
    break gameLoop;
}