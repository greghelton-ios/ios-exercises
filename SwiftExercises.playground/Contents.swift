import UIKit


/*
Strings
*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    let cheese2 = "My favorite cheese is " + cheese
    return cheese2
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*
Arrays & Dictionaries
*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"
numberDictionary

// .append() to an Array and .insert() to a Set
var varAryNums:Array<String> = ["one", "two", "one"]
var varSetNums:Set<String> = ["one", "two", "one"]
varSetNums.insert("four")
var secondSet:Set = Set(varAryNums)
secondSet.insert("seven")

/*
tuples
*/
var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    println("\(animalName)s have \(legCount) legs")
}

var nextNumberOfLegs = [(animal:"spider", legs:8), (animal:"ant", legs:6)]
for (animalName, legCount) in nextNumberOfLegs {
    println("\(animalName)s have \(legCount) legs")
}

for animalLegs in nextNumberOfLegs {
    println("\(animalLegs.animal)s have \(animalLegs.legs) legs")
}


typealias Tuplealias = (first: String, second: String)
let myTupX: Tuplealias = (first:"one", second:"two")
let myTupY: Tuplealias = (first:"three", second:"four")
let tups: Array<Tuplealias> = [myTupX, myTupY]
tups
//let tupSet: Set<Tuplealias> = Set(tups)
//tupSet


// problem putting values from tuple into Dictionary
// fixed finally
typealias numberNames = (digit: Int, name:String)
let namedNumber1: numberNames = (digit:1, name:"one")
let namedNumber2: numberNames = (digit:2, name:"two")
let namedNumArray: [numberNames] = [namedNumber1, namedNumber2]
namedNumArray
namedNumArray[1].name

var numbersDictionary = [Int: String]()
for namedNum in namedNumArray {
    numbersDictionary[namedNum.digit] = namedNum.name
}
numbersDictionary
// *************************************** end


/*
Loops
*/

var sum = 0
for var i = 0; i <= 10; i++ {
    sum += i
}
sum

var jx = 0
for kx in 1...10 {
    jx += kx
}
jx


// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for num in (1...10) { println(num) }

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for p in (1..<10) {
    println(p)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:[[String: String]]) -> [String] {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var drinks : [String] = []
    for character in characters {
        drinks.append(character["favorite drink"]!)
    }
    return drinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*
Functions
*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
func semicolonInserter( ary: [String] ) -> String {
    return ";".join(ary)
}

let expectedOutput = "milk;eggs;bread;challah"
let actualOutput = semicolonInserter(strings)

/*
Closures
*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

/* WHERE DID *sorted* COME FROM ???? */
let sorting = {(s1: String, s2: String) -> Bool in
    return s1 < s2
}
sorted(cerealArray, sorting)

let newCerealArray: Array<String> = sorted(cerealArray, <)



var unsorted = ["Hello","Swift","Welcome","Apple","Xcode"] // must be mutable
var sortedApples = sorted(unsorted){$0<$1}
sortedApples
var revSorted = sorted(unsorted, >)
revSorted


