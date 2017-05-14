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
  this.vroom = function() { console.log("Vvvvrrrrrrooooooooooom!"); };
};

var firstCar = new Car("Porsche", "sporty red");
firstCar.age = 2
console.log(firstCar);
firstCar.vroom();

var anotherCar = new Car("Station wagon", "wood-paneled");
anotherCar.age = 26
console.log(anotherCar);
anotherCar.vroom();

var thirdCar = new Car("Toyota Camry", "champagne");
thirdCar.age = 10
console.log(thirdCar);
thirdCar.vroom();

var fourthCar = new Car("Prius", "blue");
fourthCar.age = 2
console.log(fourthCar);
fourthCar.vroom();
