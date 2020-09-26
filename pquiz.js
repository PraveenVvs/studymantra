
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



function clearStatusClass(element) {
    element.classList.remove('correct')
    element.classList.remove('wrong')
}
const questions = [{
        question: 'What is unit of Force?',
        answers: [
            { text: 'Newton', correct: true },
            { text: 'Joule', correct: false }
        ]
    },
    {
        question: 'What is unit of Weight?',
        answers: [
            { text: 'Joule', correct: true },
            { text: 'Newton', correct: false },
            { text: 'Kilogram', correct: false },
            { text: 'Meter', correct: false }
        ]
    },
    {
        question: 'What is unit of acceleration?',
        answers: [
            { text: 'meter/s', correct: false },
            { text: 'meter/s2', correct: true },
            { text: 'meter', correct: false },
            { text: 'meter/s3', correct: false }
        ]
    },
    {
        question: 'What is formulae of force?',
        answers: [
            { text: 'F=mv', correct: false },
            { text: 'F=ma', correct: true }
        ]
    }
]