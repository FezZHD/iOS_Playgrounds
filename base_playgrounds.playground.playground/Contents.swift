import UIKit

var string = "Hello, World!"
var animalString = "🐶🐔🐷🐮🐱"

let shortString = "long"

let index = try! string.indexOf(search: "World")

let animalIndex = try! animalString.indexOf(search: "🐷")

do {
    let shortIndex = try shortString.indexOf(search: "short")
    print(shortIndex)
} catch StringError.differenceBetweenLength {
    print("oh no")
}

if let shortIndex = try? shortString.indexOf(search: "short") {
    print(shortIndex)
} else {
    print("shorter oh no")
}

print(index)

print(animalIndex)
