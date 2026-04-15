let contD = 0;
let contAeB = 0;
let contE = 0;

for (let i = 1; i <= 10; i++) {
    let nota = parseFloat(prompt("Digite a nota do aluno " + i + ":"));
    let conceito;

    if (nota >= 0 && nota <= 2.9) {
        conceito = "E";
        contE++;
    } else if (nota <= 4.9) {
        conceito = "D";
        contD++;
    } else if (nota <= 6.9) {
        conceito = "C";
    } else if (nota <= 8.9) {
        conceito = "B";
        contAeB++;
    } else {
        conceito = "A";
        contAeB++;
    }

    console.log("Aluno " + i + " - Conceito: " + conceito);
}

console.log("Quantidade de alunos com conceito D: " + contD);
console.log("Quantidade de alunos com conceito A ou B: " + contAeB);
console.log("Percentual de alunos com conceito E: " + (contE / 10) * 100 + "%");