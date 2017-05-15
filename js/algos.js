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