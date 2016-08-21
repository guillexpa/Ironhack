

var user = {}
var responses = []


function question1() {
  var name = prompt('What is your name?')
  user.name = name;

  var age = prompt('How old are you?')
  user.age = age;
}


function question2() {

  var firstQuestion = prompt('Does null === 0 ? (Yes or No)')

// why do you need to convert the answer to lowercase?
  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
// what if the user writes something other than yes or no?
// they will have to answer the question again
    alert("Please answer either Yes or No");
    return question2();
  }
  responses.push(firstQuestion); // add the true or false value to the responses array
}

function question3() {
  var js = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
  js = js.toLowerCase();
  switch (js) {
    case 'Java':
    case 'JavaLive':
    case 'ScriptyScript':
      js = false;
    break;

    case 'LiveScript':
      js = true;
    break;

    default:
      alert('I don\'t understand your answer: ' + js);
      return question3();
    break;
  }
  responses.push(js);
}


function evaluate(responsesArray) {

  var total_correct = [];
  var total_incorrect = [];

  for each (var response in responses){

    if (response === true){
      total_correct.push(response);
    }else if (response === false) {
      total_incorrect.push(response);
    }

    user.correct = total_correct;
    user.incorrect = total_incorrect;

    showResults();

  }




// declare two variables to store the totals

// populate the “totals” variables from the “responsesArray”

// save the “totals” variables inside the user object

// call showResults
}

function showResults() {

// display the user results

}

// call the function, passing it the responses array
evaluate(responses);




question1();
question2();
question3();

evaluate(responses);
