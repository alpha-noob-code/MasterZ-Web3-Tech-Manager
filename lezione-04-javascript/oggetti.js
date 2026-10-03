var persona = {
    nome: "Thomas",
    cognome:"Turbato",
    data_nascita: 1996,
    indirizzo: {
        via: "Via le mani dal culo",
        civico: 69,
        città: "Ancona"
    }
}

console.log("La persona si chiama " + persona.cognome + " " + persona.nome + " ed abita in " + persona.indirizzo.via + ", " + persona.indirizzo.città);