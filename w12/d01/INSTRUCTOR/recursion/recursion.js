function loopFactorial(n){
  var product = 1;
  for(var i = 1; i <= n; i++){
    product *= i;
  }
  return product;
}

function recFactorial(n){
  if (n === 1){
    return 1;
  }
  else {
    return n * recFactorial(n-1);
  }
}

console.log(loopFactorial(5));
console.log(recFactorial(5));

function itFib(n){
  var fibArray = [0,1];

  while (fibArray.length <= n) {
    var newNum = fibArray[fibArray.length-2] + fibArray[fibArray.length-1];
    fibArray.push(newNum);    
  }
  return fibArray[n];
}

console.log(itFib(5));

function recFib(n){
  if (n === 0){
    return 0;
  } else if (n === 1) {
    return 1;
  } else {
    return recFib(n-1) + recFib(n-2);
  }
}

console.log(recFib(5));