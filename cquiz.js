
const startButton = document.getElementById('start-btn');
const nextButton = document.getElementById('next-btn');
const questionContainerElement = document.getElementById('question-container');
const questionElement = document.getElementById('question');
const answerButtonsElement = document.getElementById('answer-buttons');
const total = document.getElementById('tot');
const smbt=document.getElementById("smbt");
const score=document.getElementById("score");
let shuffledQuestions, currentQuestionIndex, count,selectedButton, correct;

startButton.addEventListener('click', startGame)
nextButton.addEventListener('click', () => {
    currentQuestionIndex++;
    setNextQuestion();
})

function startGame() {
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
        question: 'Chemical formulae of water?',
        answers: [
            { text: 'H20', correct: true },
            { text: 'H02', correct: false }
        ]
    },
    {
        question: 'Chemical name of iron?',
        answers: [
            { text: 'Ferrous', correct: true },
            { text: 'Rubidium', correct: false },
            { text: 'Mercury', correct: false },
            { text: 'Lithium', correct: false }
        ]
    },
    {
        question: 'Center part of a atom?',
        answers: [
            { text: 'nucleus', correct: false },
            { text: 'electron', correct: true },
            { text: 'molecule', correct: false },
            { text: 'element', correct: false }
        ]
    },
    {
        question: 'Chemical name of O2?',
        answers: [
            { text: 'oxygen', correct: true },
            { text: 'argon', correct: false }
        ]
    }
]