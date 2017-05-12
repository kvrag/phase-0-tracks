// A function that takes a string as a parameter and reverses it

// Define the method with parameter 'str'
// Create a loop
// Start a counter at length+1 of the string
// While the counter is greater than or equal to zero, 
  // print the letter at the index corresponding to the counter
  // subtract 1 from the counter 
// End the loop


function reverse(str) {
  var newStr = "";
  for (var i = str.length; i >= 0; i -= 1) {
    newStr = newStr.concat(str[i]);
  }
  console.log(newStr);
}

var helloReversed = reverse("hello"); 