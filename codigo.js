
const sumar = (num1,num2)=>{
	return parseInt(num1)+parseInt(num2);
}

const restar = (num1,num2)=>{
	return parseInt(num1)-parseInt(num2);
}

const multiplicar = (num1,num2)=>{
	return parseInt(num1)*parseInt(num2);
}

const dividir = (num1,num2)=>{
	return parseInt(num1)/parseInt(num2);
}

alert(" Que operacion deseas realizar?");
operacion = prompt("1: suma, 2: resta, 3: multiplicacion, 4: division")

if (operacion == 1 ){
	let num1 = prompt("Primer numero para sumar");
	let num2 = prompt("Segundo numero Para sumar");
	resultado = sumar(num1,num2);
	alert(`tu resultado es ${resultado}`);
}

else if (operacion == 2 ){
	let num1 = prompt("Primer numero para restar");
	let num2 = prompt("Segundo numero Para restar");
	resultado = restar(num1,num2);
	alert(`tu resultado es ${resultado}`);
}

else if (operacion == 3 ){
	let num1 = prompt("Primer numero para multiplicar");
	let num2 = prompt("Segundo numero Para multiplicar");
	resultado = multiplicar(num1,num2);
	alert(`tu resultado es ${resultado}`);
}

else if (operacion == 4 ){
	let num1 = prompt("Primer numero para dividir");
	let num2 = prompt("Segundo numero Para dividir");
	resultado = dividir(num1,num2);
	alert(`tu resultado es ${resultado}`);
}

	else{
		alert("no se ha encontrado la operacion");
	}