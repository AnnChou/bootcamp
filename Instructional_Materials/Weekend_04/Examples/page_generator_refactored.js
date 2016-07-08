// In this script we are going to dynamically generate ourselves a page
"use strict"

// Our initial prompting of the user for how many elements they would like to generate
var number = prompt("How many elements would you like to generate (1-10)?");

// To make our code more efficient, we can make a function that checks the user's input
validateInput(number);

// The validateInput function checks if the value is a number, and then proceeds to generate elements if need be
function validateInput(input) {

    // The if statement to check if the input is between 1-10. 
    // One thing to note is that prompt(..) returns a string, which means our 'number' variable earlier is in fact a string when passed to validateInput(..). JavaScript is smart though and knows when we compare a string with a number, that it should convert that string into a number.
    if ( input > 0 && input <= 10 ) {

        // We've confirmed that the number is between 1-10, so we run our generateElements(..) function to build out the elements on the page. 
        console.log("Number is between 1-10, generate elements.");
        generateElements(input);
    } 
    // This is the condition if our input is not between 1-10
    else {
        
        // In the case that our value is not between 1-10, we ask the user again for a number and then validate it again
        console.log("Number is not between 1-10, ask again.");
        number = prompt("Sorry, please input a number of elements to generate from 1-10.");
        
        // The line below calls validateInput(..) within itself, which may seem confusing at first. This is one of the beauties of programming languages, as they allow us to recurse to keep running functionality until no longer needed.
        validateInput(number);
    }
}

// Our function for generating the elements on the page, which only requires the number of elements to be generated
function generateElements(numElements) {
    
    // The numElements variable which is passed to the function determines how many elements to build
    for (var i=1; i<=numElements; i++) {
        console.log("Generating element #"+i);
        
        // The document variable is not actually JavaScript, but a form of global variable accessible by JavaScript when it lives in a browser. It in company with the createElement(..) method allows us to tell the browser DOM to create a new HTML element.
        var element = document.createElement("p");

        // Applying some styling to our newly created paragraph tag <p>
        element.setAttribute("style", "width: 200px; height: 200px; margin: 5px; padding: 10px; float: left; background-color: #DDD;");
        
        // Injecting some further content into the paragraph tag
        element.innerHTML = "This is element <strong>number "+i+"</strong>. How very exciting!";
        
        // Appending the new paragraph tag and its content to the <body> tag 
        document.body.appendChild(element);
        
    }
    
    console.log("Done generating elements");
}