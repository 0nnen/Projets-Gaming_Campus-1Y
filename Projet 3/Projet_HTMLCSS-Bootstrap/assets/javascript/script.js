console.log("Hello World"); //Commentaire

const test1 = "Coucou";
let test2 = "Bonjour";

let tableau = [20,25,30,40];
console.log (tableau)

console.log (tableau.lenght)

let btn1 = document.querySelector('#js-oui');
let btn2 = document.querySelector('#js-non');
let btn3 = document.querySelector('#js-ouii');
let btn4 = document.querySelector('#js-nonn');


let clickO = btn1.addEventListener('click', () => {
    console.log ("Il sent bon");
})
let clickN = btn2.addEventListener('click', () => {
  console.log ("Ou pas ?");
})

let clickOo = btn3.addEventListener('click', () => {
    console.log ("Je parlais du prof");
})
let clickNn = btn4.addEventListener('click', () => {
  console.log ("Ou de Victor ?");
})




let field = document.getElementById("app-field");
console.log(field)
let btn = document.getElementById("app-btn");
console.log(btn)
let listItems = document.getElementById("app-listItems");
console.log(listItems)

btn.addEventListener("click", () => {
  let text = field.value;
  console.log(text)

  let li = document.createElement("li");
  li.innerText = text;
  document.body.appendChild(li);
  field.value='';
})