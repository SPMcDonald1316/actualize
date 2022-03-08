// 1. Write a function that takes in an array and returns a new array with each number tripled. For example, given [3, 1, 5, 10], the function should return [9, 3, 15, 30].

function tripledArray(array) {
  var newArray = [];
  array.forEach(function(number) {
    newArray.push(number * 3);
  });
  return newArray
}

console.log(tripledArray([3,1,5,10]));

// 2. Write a function that takes in an array of numbers and returns a new array of numbers less than 5. For example, given [4, 10, 8, 3], the function should return [4, 3].

function lessThan5(array) {
  var newArray = [];
  array.forEach(function(number) {
    if (number < 5) {
      newArray.push(number);
    }
  });
  return newArray
}

console.log(lessThan5([4, 10, 8, 3]));

// 3. Write a function that takes an array of numbers and returns the sum of all the numbers. For example, given [3, 9, 1], the function should return 13.

function sumOfArray(array) {
  var sum = 0;
  array.forEach(function(number) {
    sum += number;
  });
  return sum
}

console.log(sumOfArray([3, 9, 1]));

// 4. Write a function that takes in an array of strings and returns all the strings combined into a single string. For example, given ["a", "b", "c"], the function should return "abc".

function combinedString(array) {
  var newString = "";
  array.forEach(function(letter) {
    newString += letter;
  });
  return newString
}

console.log(combinedString(["a", "b", "c"]));

// 5. Write a function to solve FizzBuzz (print out the numbers 1 through 100, except multiples of 3 print "Fizz", multiples of 5 print "Buzz", and multiples of 15 print "FizzBuzz").

function fizzBuzz() {
  for (var number = 1; number <= 100; number++) {
    var message = number;
    if (number % 15 === 0) {
      message = "Fizzbuzz";
    } else if (number % 5 === 0) {
      message = "Buzz";
    } else if (number % 3 === 0) {
      message = "Fizz";
    }
    console.log(message);
  }
}

fizzBuzz();

// 6. Write a function that prints the lyrics to 99 Bottles of Beer.

function nintyNineBottles() {
  var pluralS;
  for (var numberOfBottles = 99; numberOfBottles > 0; numberOfBottles--) {
    if (numberOfBottles !== 1) {
      pluralS = "s";
    } else {
      pluralS = "";
    }

    console.log( numberOfBottles + " bottle" + pluralS + " of beer on the wall, " + numberOfBottles + " bottle" + pluralS + " of beer.");

    if (numberOfBottles - 1 !== 1) {
      pluralS = "s";
    } else {
      pluralS = "";
    }

    console.log("take one down, pass it around, " + (numberOfBottles - 1) + " bottle" + pluralS + " of beer on the wall.");
    console.log("");
  }
}

nintyNineBottles();