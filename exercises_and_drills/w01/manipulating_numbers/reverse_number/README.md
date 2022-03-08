# Exercise - Reverse a Number

![reverse number](resources/reverse_order.png)

<span style="color: red;">This is Part 2 of Manipulating Numbers.</span>

It's time to be a mob accountant and juggle some numbers. We want to write a method that accepts an integer such as `12345` and returns an integer of `54321`.

- Your input will be an integer greater than 10 that doesn't end in a zero.
- Your output will be an integer where the numeric characters are reversed.

There are several ways to solve this problem, and we will try two distinct approaches.

# Research

Familiarize yourself with some String and Integer methods. When thinking through this problem, really explore some options before deciding on a plan of attack. Don't rush.

  - [String](https://ruby-doc.org/core-2.4.0/String.html), we are asking you to not use the `#reverse` method for this exercise.

  - [Numeric (Integer inherits from this)](https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_numeric.html), we are asking you to not use the `#divmod ` method for this exercise.

  - [Arithmetic Operators](https://www.w3resource.com/ruby/ruby-arithmetic-operators.php)

# Commit 1 - Pseudocode

Write down your input and output with the data types (EX: String, Integer, Array of Integers, etc.) that your method could accept and then list specific examples of input data and each expected output.

Write your steps in plain English. It is very important to not specify the data types or the methods that you will use within the method to accomplish your goal. In this way, your pseudocode can be used for both solutions.

Note: Do not use the String#reverse method. The goal is to write the code in more detailed steps on your own.

# Commit 2 - String Solution

The first approach we will take involves converting the number into a list of numeric characters, then reversing the characters, and finally converting the string of reversed characters back into an integer. Note: Your pseudocode should be more specific than this and written in plain English. Again, don't use the reverse method.

Write your initial solution and make the tests pass. 

# Commit 3 - I've Got No Strings

<!--![No Strings](resources/no_strings.gif)-->
<img id="pinocchio-gif" src="resources/no_strings_no_loop.gif" />
<div id="resetButton">Play Gif</div>
</div>

Rewrite your method in the `No Strings Solution` section without ever using a string within your logic. Hint: It may be helpful at some point to make a second method, but that method cannot contain strings either.

Hopefully, your pseudocode doesn't need to change too drastically if it's truly free of code syntax. Don't get worried about the math involved. Concentrate on isolating each number before changing the order.

# Commit 4 - Refactor Solution

Refactor your "No Strings" version of the `reverse_a_number`


<style>
#resetButton {
	-moz-box-shadow: 3px 4px 0px 0px #8a2a21;
	-webkit-box-shadow: 3px 4px 0px 0px #8a2a21;
	box-shadow: 3px 4px 0px 0px #8a2a21;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c62d1f), color-stop(1, #db3f34));
	background:-moz-linear-gradient(top, #c62d1f 5%, #db3f34 100%);
	background:-webkit-linear-gradient(top, #c62d1f 5%, #db3f34 100%);
	background:-o-linear-gradient(top, #c62d1f 5%, #db3f34 100%);
	background:-ms-linear-gradient(top, #c62d1f 5%, #db3f34 100%);
	background:linear-gradient(to bottom, #c62d1f 5%, #db3f34 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c62d1f', endColorstr='#db3f34',GradientType=0);
	background-color:#c62d1f;
	-moz-border-radius:20px;
	-webkit-border-radius:20px;
	border-radius:20px;
	border:2px solid #d02718;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Verdana;
	font-size:17px;
	padding:8px 14px;
	text-decoration:none;
	text-shadow:0px 1px 0px #810e05;
}
#resetButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #db3f34), color-stop(1, #c62d1f));
	background:-moz-linear-gradient(top, #db3f34 5%, #c62d1f 100%);
	background:-webkit-linear-gradient(top, #db3f34 5%, #c62d1f 100%);
	background:-o-linear-gradient(top, #db3f34 5%, #c62d1f 100%);
	background:-ms-linear-gradient(top, #db3f34 5%, #c62d1f 100%);
	background:linear-gradient(to bottom, #db3f34 5%, #c62d1f 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#db3f34', endColorstr='#c62d1f',GradientType=0);
	background-color:#db3f34;
}
#resetButton:active {
	position:relative;
	top:1px;
}

        
}
</style>

<script>
	var resetAnimation = function resetAnimation() {
	  var pinocchioGif = document.getElementById("pinocchio-gif");
	  pinocchioGif.src = pinocchioGif.src;
	};
	
	var resetButton = document.getElementById("resetButton");
	resetButton.addEventListener("click", resetAnimation);
</script>
