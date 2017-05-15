// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// create an example array
// determine the length of each word/phrase
// compare each word/phrase to the one after it and swap if not in length order (bubble sort)
// return the last word/phrase in the array (the longest)


function wordSort(arr){
  var i, j, lim;
  lim = arr.length; while(lim--) {
    for(i = 0, j = 1; i < lim; i++, j++) 
      if(arr[i].length > arr[j].length) {
        var temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
  }
  return arr.pop();
}

//------DRIVER CODE----------

words = ["moon", "cow", "cantaloupe", "margarine", "test"]
phrases = ["apple pie", "creme de la creme", "scary face", "pie hole"]
wordsPhrases = ["apple pie", "moon", "scary face", "margarine", "test"]

console.log(wordSort(words))
console.log(wordSort(phrases))
console.log(wordSort(wordsPhrases))

//---------------------------

// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.

// iterate through object 1 
// compare each key-value pair in object 1 with object 2
// return 'true' if there is a match
// else return 'false' 

function checkPair(obj1, obj2) {
  for (var p in obj1) {
    result = false
    if(obj2.hasOwnProperty(p) && obj1[p] === obj2[p]) {
      result = true;
    // } else if(obj2.hasOwnProperty(p) && obj1[p] !== obj2[p]) {
    //   result = false;
    // } else if(!obj2.hasOwnProperty(p)) {
    //   result = false; 
    // } else {
    //   result = false; 
    }
  }return result; 
}

obj1 = {name: "Steven", age: 54}
obj2 = {name: "Tamir", age: 54}
obj3 = {animal: "Dog", legs: 4}
obj4 = {animal: "Dog", legs: 3}
obj5 = {animal: "Bird", legs: 2}

console.log(checkPair(obj1, obj2))
console.log(checkPair(obj4, obj5))
