
document.body.style.backgroundImage = "url('https://media.gq.com/photos/5d55759c375b530008648af8/3:2/w_775%2Cc_limit/GQ-StadiumGoods-081419-1-5.jpg')"

let inputList = []

// grab items titles and save to localStorage
function saveToCart1() {
  let inputValue1 = document.querySelector('#title1').innerHTML
  inputList.push(inputValue1)
  localStorage.setItem('inputKey', JSON.stringify(inputList))
}

function saveToCart2() {
  let inputValue2 = document.querySelector('#title2').innerHTML 
  inputList.push(inputValue2)
  localStorage.setItem('inputKey', JSON.stringify(inputList))
}

function saveToCart3() {
  let inputValue3 = document.querySelector('#title3').innerHTML 
  inputList.push(inputValue3)
  localStorage.setItem('inputKey', JSON.stringify(inputList))
}

function saveToCart4() {
  let inputValue4 = document.querySelector('#title4').innerHTML 
  inputList.push(inputValue4)
  localStorage.setItem('inputKey', JSON.stringify(inputList))
}

// localStorage json object
let outputList = JSON.parse(localStorage.getItem('inputKey'))
// alert(outputList)

// Show items in cart
function viewCart() {
  
  var li = document.createElement("li");
  var list = document.getElementById("myUL")
  for (var i = 0; i < outputList.length; i++)  {
    
    // var cartItem = document.createTextNode(outputList[i]);
    // li = li.appendChild(cartItem);
    li.innerHTML = outputList[i];
    list.appendChild(li)
    
  }
  
}
