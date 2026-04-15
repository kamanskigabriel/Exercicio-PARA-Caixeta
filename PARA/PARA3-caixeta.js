for (let i = 1; i <= 10; i++) {
    let nota = parseFloat(prompt("Digite a nota do aluno " + i + ":"));
    let conceito;

    if (nota >= 0 && nota <= 2.9) {
        conceito = "E";
    } else if (nota <= 4.9) {
        conceito = "D";
    } else if (nota <= 6.9) {
        conceito = "C";
    } else if (nota <= 8.9) {
        conceito = "B";
    } else {
        conceito = "A";
    }

    console.log("Aluno " + i + " - Conceito: " + conceito);
}