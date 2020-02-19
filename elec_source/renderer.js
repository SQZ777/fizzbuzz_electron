function add_number() {
    number_element = document.getElementById("number")
    var now_number = parseInt(number_element.textContent)
    number_element.textContent = now_number + 1
    fizz_buzz(now_number + 1)
}

function fizz_buzz(number) {
    var word = document.getElementById("result")
    if (number % 15 === 0){
        word.textContent = "fizzbuzz"
    }else if (number % 3 === 0){
        word.textContent = "fizz"
    }else if(number % 5 === 0){
        word.textContent = "buzz"
    }else{
        word.textContent = "nothing"
    }
}

document.querySelector('#add_btn').addEventListener('click', () => {
    add_number()
})