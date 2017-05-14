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

combine("Stardust", "orange")
console.log(rainbow_horses)