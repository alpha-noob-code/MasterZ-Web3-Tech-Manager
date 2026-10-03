var casa = {
    via: "Via le mani dal culo",
    città: "Milano",
    regione: "Lombardia",
    data_costruzione: 2021,
    classe_energetica: "A++",
    azienda: {
        data_apertura: 1999,
        azienda: "Er mattone srl",
        inizio_lavori: 2018,
    }

}

console.log(typeof(casa));
console.log(casa.regione);

casa.classe_energetica = "C";

console.log(casa.classe_energetica);