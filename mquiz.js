
const startButton = document.getElementById('start-btn');
const nextButton = document.getElementById('next-btn');
const questionContainerElement = document.getElementById('question-container');
const questionElement = document.getElementById('question');
const answerButtonsElement = document.getElementById('answer-buttons');
const total = document.getElementById('tot');
const smbt=document.getElementById("smbt");
const score=document.getElementById("score");
let shuffledQuestions, currentQuestionIndex, count,selectedButton, correct;


const startingMinutes=(1/20)
let time=startingMinutes*60; 
const countdown=document.getElementById("countdown");

//function updateCountdown()
//{
//    const min=Math.floor(time/60);
//    let seconds=time%60;
//    seconds=seconds<10 ? '0'+seconds :seconds;
//    countdown.innerHTML=min+":"+seconds;
//    time--;
//    if(min==0  && seconds==0)
//    {
//          alert("Time completed");
//          score.value=""+((count / 4) * 100);
//          smbt.click();
//
//    }    
//}

startButton.addEventListener('click', startGame)
nextButton.addEventListener('click', () => {
    currentQuestionIndex++;
    setNextQuestion();
})

function startGame() {
//	setInterval(updateCountdown,3000);
    startButton.classList.add('hide');
    shuffledQuestions = questions.sort(() => Math.random() - .5);
    count = 0;
    currentQuestionIndex = 0;
    questionContainerElement.classList.remove('hide');
    setNextQuestion();
}

function setNextQuestion() {
    resetState();
    if (currentQuestionIndex != 0) {
        if (correct)
            count += 1;
    }

    showQuestion(shuffledQuestions[currentQuestionIndex]);
}

function showQuestion(question) {
    questionElement.innerText = question.question;
    question.answers.forEach(answer => {
        const button = document.createElement('button');
        button.innerText = answer.text;
        button.classList.add('btn');
        if (answer.correct) {
            button.dataset.correct = answer.correct;
        }
        button.addEventListener('click', selectAnswer);
        answerButtonsElement.appendChild(button);
    })
}

function resetState() {
    nextButton.classList.add('hide');
    while (answerButtonsElement.firstChild) {
        answerButtonsElement.removeChild(answerButtonsElement.firstChild);
    }
}

function selectAnswer(e) {
    selectedButton = e.target;
    correct = selectedButton.dataset.correct;
    Array.from(answerButtonsElement.children).forEach(button => {
        button.classList.remove('selected');
    })
    selectedButton.classList.add('selected');

    // setStatusClass(document.body, correct)

    if (shuffledQuestions.length > currentQuestionIndex + 1) {
        nextButton.classList.remove('hide');

    } else {
        if (correct) {
            count = count + 1
        }
        total.classList.remove('hide');
        total.innerText = "Total Score is" + count + "/4";
	     score.value=""+((count / 4) * 100);
		smbt.classList.remove("hide");

		//'<% SimpleScriptContext simple = new SimpleScriptContext(); simple.setAttribute( "scr", "count", ScriptContext.ENGINE_SCOPE);%>'
//		score.classList.remove("hide");
        //questions.length;
        
            //startButton.classList.remove('hide')
    }
}


/*
function setStatusClass(element, correct) {
  clearStatusClass(element)
  if (correct) {
    element.classList.add('correct')
  } else {
    element.classList.add('wrong')
  }
}*/

function clearStatusClass(element) {
    element.classList.remove('correct')
    element.classList.remove('wrong')
}
const questions = [{
        question: 'What is 2 + 2?',
        answers: [
            { text: '4', correct: true },
            { text: '22', correct: false }
        ]
    },
    {
        question: 'What is 10*2?',
        answers: [
            { text: '20', correct: true },
            { text: '30', correct: false },
            { text: '40', correct: false },
            { text: '50', correct: false }
        ]
    },
    {
        question: 'What is 10/2?',
        answers: [
            { text: '6', correct: false },
            { text: '5', correct: true },
            { text: '10', correct: false },
            { text: '4', correct: false }
        ]
    },
    {
        question: 'What is 4 * 2?',
        answers: [
            { text: '6', correct: false },
            { text: '8', correct: true }
        ]
    }
]