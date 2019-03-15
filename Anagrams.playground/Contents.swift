import UIKit

var str = "Hello, playground"

//Reference:
//https://stackoverflow.com/questions/32209803/swift-anagram-checker

/* Given a list of strings, return a list of lists of strings that groups all anagrams.
 
 Ex. given [god, bike, cars, arcs, dog]
 return [[cars, arcs], [bike], [dog, god]]
 */

let ar = ["god", "bike", "cars", "arcs", "dog"]

func anagramCheck1(a: String, b: String) -> Bool {
    guard a.count == b.count else { return false }
    return a.sorted() == b.sorted()
}

var result = [[String]]()
for i in 0..<ar.count {
    for j in i+1..<ar.count {
        var tempAr = [String]()
        if (anagramCheck1(a: ar[i], b: ar[j])) {
            tempAr.append(ar[i])
            tempAr.append(ar[j])
            result.append(tempAr)
        } else {
            if !result.isEmpty && !result.joined().contains(ar[i])  {
                //Note:
                tempAr.append(ar[i])
                result.append(tempAr)
            }
        }
    }
}

print("result:", result)


/*
 //How to convert from this:
 for (int i = 0; i < n; i++) {
   for (int j = i+1; j < n; j++) {
     }
 }

 //To swift 4 syntax:
for i in 0..<n {
    for j in i + 1..<n {
    }
}
*/
