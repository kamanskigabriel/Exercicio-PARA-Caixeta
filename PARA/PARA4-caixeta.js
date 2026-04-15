let n = parseInt(prompt("Digite um número inteiro positivo:"));
let fatorial = 1;

for (let i = 1; i <= n; i++) {
    fatorial *= i;
}

alert("Fatorial de " + n + " = " + fatorial);