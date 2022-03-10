# Exercise - Telephone Talk

<span style="color: red;">This is Part 1 of Funny Talk.</span>

![roto dial phone](resources/roto_dial.jpg)

Someone has given you a list of people's contact information. You have been asked to collect the person's name, telephone number and Twitter handle. We need a method that uses regular expressions to retrieve the name (which is always first), their phone number (which can come in multiple forms) and their Twitter handle, which can be any other element with in the array, and return it as a nested hash.

Here's your information:

```ruby
bloggers_information = [[["James Spader"],["214.555.1357"],["123 N South St."],["Chicago"],["il"],["60645"],["@samspade"]],
                        [["Jenny Forrest"],["Schamberg"],["il"],["312-555-2244"],["@imaboat"]],
                        [["Jimmy Stuart"],["@getyerwings"],["313 555 9865"],["1128 Alameda Ave"],["Glendale"],["CA"],["92606"]],
                        [["Mountain Joe"],["3035550021"],["@campfire"]],
                        [["Mr. Henderson"],["312-555-9224"],["Chicago"],["il"],["60647"],["@hairy"]],
                        [["Nerf Herder"],["123 N South St."],["Chicago"],["il"],["60645"],["@blueharvest"],["310.555.2234"]]]                        
```

Your code should return the following result:

```ruby
{
 "James Spader" => {phone => "214.555.1357", twitter => "@samspade"},
 "Jenny Forrest" => {phone => "312-555-2244", twitter => "@imaboat"},
 "Jimmy Stuart" =>{phone => "313 555 9865", twitter => "@getyerwings"},
    # continued key/value pairs...
}
```

Again, we are concentrating on improving process as well as writing code that functions correctly. In this exercise, we want you to do the following.

1. Break problem into implementable pseudocode
2. Conceptualize the real world example, modeled in Ruby
3. Gain experience with RegEx
4. Work with loops

# Commit 1 - Research

Check out the online tool, [Rubular](http://rubular.com). Play around with this tool to find out how to write [Regular Expressions](https://ruby-doc.org/core-2.4.1/Regexp.html). Regular Expressions (aka RegEx) is used when you want to identify a pattern in a string. Here's an example to start:

Copy the following tet in its entirety and paste it into the box under the line `Your test string:` on `rubular.com`. This will give you a test case to start identifying patterns within the text.

>'Your hair wants cutting,' said the Hatter. He had been looking at Alice for some time with great curiosity, and this was his first speech.

>'You should learn not to make personal remarks,' Alice said with some severity; 'it's very rude.'

In the box under the line `Your regular expression:`, type the following:

```ruby
[d]
```

This RegEx pattern should highlight all the `d` characters in our text. On the solution page and in your own words, describe what each of the following patterns identify. You are not required to identify the bonus research questions.

#### Questions

1. `[da]`
2. `\s`
3. `\W`
4. `\w`
5. `\A.` What are the two parts to this pattern?
6. `\w{3}` Why does this pattern not grab all of the letters?
7. `\w[ ]\w`
8. Bonus: What is the difference between `\w` and `\w+`
9. Bonus: `[\n]`

![Circle Pattern Fractal](resources/circle-fractal.jpg)

Remember: RegEx looks for patterns

# Commit 2 - Pseudocode

Let's review some pseudocode best practices.

You have already been given your input example in the `Runner Code` section, but you need to give a clear description of its data type. It's an Array, but is that enough to understand its structure? You must assess it in more detail.

Write down the expected output's data type and a specific return value you expect from the method. 

Pseudocode steps are best defined as a list written in concise plain English. Hold yourself to use only words that don't have a purpose in code such as `iterate`, `return`, `string` `integer`, `array`, `hash`, `loop`, `nested` etc. This gets harder when you are trying to say something that uses a word that could be used in everyday English but is also a code word such as `each`. You will become a more effective pseudocoder if you search the other 470,000 words (according to Merriam-Webster) to convey your meaning. This practice makes sure that you don't tie yourself into only one data type, form of looping, or a single method. When you have this code-agnostic solution you may find different possibilities for the actual implementation.

Pseudocode is not only helpful for focusing on the task at hand. You may be talking to a non-technical person on a project or a developer that doesn't know the same language. Having non-Ruby-specific ways of describing the logic allows you to flexibly communicate your problem's solution.

# Commit 3 - Initial Solution

Write your initial solution to get the desired output. The Runner Code has already been written for you. Do not change the runner code while implementing your initial solution.

> If you need help there is an example for identifying a pattern exists within a string. [Here](examples/matching_patterns.rb)

# Commit 4 - Write a Test

You can now add to the `Runner Code / Tests` section. Create some tests to assure that your code returns the correct result if it's passed alternate input data of same data type structure.

# Commit 5 - Refactor Solution

Comment out the initial solution. Copy and paste your method to the `Refactor Solution` section and clean up your code so it is written more cleanly, is more readable, and/or is broken into smaller [single responsibility methods](../../../Resources/Refactoring.md#single-responsibility-methods).

# Bonus

Extra points if you find a way to standardize all the phone numbers to xxx-xxx-xxxx format when saving them into your nested hash. I would suggest making a separate method to format a phone number.

