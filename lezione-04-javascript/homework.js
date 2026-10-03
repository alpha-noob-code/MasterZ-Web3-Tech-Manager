const giorniSettimana = ["Lunedì", "Martedì", "Mercoledì", "Giovedì", "Venerdì", "Sabato", "Domenica"];
 meleRimanenti = 5;

for (i = 0; i < giorniSettimana.length; i++) {
    const giorno = giorniSettimana[i];
    console.log(`${giorno} (${i + 1} giorno): Ho ${meleRimanenti} mele`);

    if (giorno === "Mercoledì") {
        console.log("Oggi non ho voglia di mela");
    } else if (meleRimanenti > 2) {
        console.log("Mangio una mela");
        meleRimanenti--;
    } else {
        console.log("Da oggi non posso più mangiare mele");
        break;
    }
}

 console.log("Mi rimangono " + meleRimanenti + " mele");