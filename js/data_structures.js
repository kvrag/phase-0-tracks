var colors = ["green", "pink", "blue", "yellow"]

var names = ["Ed", "Murray", "Charlie", "Brownie"]

colors.push("orange")
console.log(colors)

names.push("Stardust")
console.log(names)



// create an object of horses

rainbow_horses = {}

function combine(name, color) {
  rainbow_horses[name] = color
}

// combine("Stardust", "orange")
// console.log(rainbow_horses)

for (var i=0; i < names.length; i++) {
  combine(names[i], colors[i])
}

console.log(rainbow_horses)

// write a constructor function for a car

function Car(model, color) {
  console.log("New car:", this)
  this.model = model;
  this.color = color; 
  this.age = 0;
  this.superCharged = true;
    this.vroom = function() {
      if (this.superCharged) {
        console.log("Vvvvrrrrrrooooooooooom!");
      } else {
        console.log("*sputters, dies*");
      }
    };
};

var firstCar = new Car("Porsche", "sporty red")
console.log(firstCar)
console.log(firstCar.vroom)
