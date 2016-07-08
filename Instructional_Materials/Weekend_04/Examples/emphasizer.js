// A simple script for trying out some of the basics of programming in JavaScript. In this script we will ask the user for a message they want to 'emphasize'.


// Using the prompt(..) function, we can ask the user for some basic feedback. By storing the value in our 'emphasizeMe' variable, we can then use and return that variable later.
var emphasizeMe = prompt("Please input your phrase for emphasis:");

// The console as appears in devtools is an object (more on that later) that can be referenced by JavaScript. Below we are using the console's log(..) function to pass our collected variable out to ensure it worked
console.log(emphasizeMe);

// The variable below captures the result of our 'emphasizeString' function (defined further down), and it requires that we input our string for emphasis
var emphasisAdded = emphasizeString(emphasizeMe);

// Providing output of our new string to the console and an alert window (popup)
console.log(emphasisAdded);
alert(emphasisAdded);


// Here we are declaring a new 'named' function. This means that we can call on it - as seen above - to change our phrase
function emphasizeString(forEmphasis) {
    // Adding a new variable which will contain our emphasized string
    var emphasized = "";

    // To repeat our string a number of times, we use a short loop to repeat a number of statments
    for (var i=0; i<4; i++) {
        // Here we are adding our emphasized variable to forEmphasis and adding an exclamation point at the end
        emphasized = emphasized + forEmphasis + "! ";
    }

    // This outputs our new string for use elsewhere
    return emphasized;
}