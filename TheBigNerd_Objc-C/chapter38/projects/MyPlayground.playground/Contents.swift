import UIKit

func changeName(name: UnsafeMutablePointer<String>, to n: String) {
    name.pointee = n
}

var initialName = "Ericson"
print(initialName)

changeName(name: &initialName, to: "Eric")
print(initialName)
