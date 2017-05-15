// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// create an example array
// determine the length of each word/phrase
// compare each word/phrase to the one after it and swap if not in length order (bubble sort)
// return the last word/phrase in the array (the longest)


var wordSort = function(arr){
  do{
    var swapped = false;
    arr.forEach((word, i)){
      if(word.length > arr[i + 1].length){
        var temp = word;
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        swapped = true;
      }
    }
  }while(swapped === true)
  return arr[-1];
}