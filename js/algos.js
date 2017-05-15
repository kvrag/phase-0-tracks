// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// 1. create an example array
// 2. determine the length of each word/phrase
// 3. compare each word/phrase to the one after it and swap if not in length order (exe. bubble sort)
// 4. return the last word/phrase in the array (the longest)


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

// 1. iterate through object 1 
// 2. compare each key-value pair in object 1 with object 2
// 3. return 'true' if there is a match
// 4. else return 'false' 

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

//------DRIVER CODE----------

obj1 = {name: "Steven", age: 54}
obj2 = {name: "Tamir", age: 54}
obj3 = {animal: "Dog", legs: 4}
obj4 = {animal: "Dog", legs: 3}
obj5 = {animal: "Bird", legs: 2}

console.log(checkPair(obj1, obj2))
console.log(checkPair(obj4, obj5))

//---------------------------

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters.

// array length = passed into the function
// each string's length = random (1..10)

// 1. generate a random number between 1 and 10
// 2. generate a string of random characters of that length
// 3. do that a certain number of times (parameter) and push each result into an array

// random character function source: http://stackoverflow.com/questions/1349404/generate-random-string-characters-in-javascript



function randChar(stringLength) {
  var text = ""; 
  var possible = "abcdefghijklmnopqrstuvwxyz";
  for(var i = 0; i < stringLength; i++)
    text += possible.charAt(Math.floor(Math.random() * possible.length));
  return text; 
}



//------DRIVER CODE----------
// Do the following 10 times: generate an array, print the array, feed the array to your "longest word" function, and print the result.

console.log(randChar(4))
console.log(randChar(8))


//---------------------------
