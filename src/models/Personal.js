const pool = require('./../conexion');

class Personal{

    devolverDirectivos(){

        return [
            {
                fotoPersona: "https://",
                nombresPersona: "Juan Velez",
                correoPersona: "example@Directivos",
                cargoPersona: "directivo",
                descripcionCargo: "es el directivo xd"
            }
        ]

    }

    devolverInstructores(){

        return [
            {
                fotoPersona: "https://",
                nombresPersona: "Juana Peña",
                correoPersona: "example@Instructores",
                cargoPersona: "instructor",
                descripcionCargo: "es el instructor xd"
            }
        ]

    }

    devolverPersonalApoyo(){

        return [
            {
                fotoPersona: "https://",
                nombresPersona: "Panfilo",
                correoPersona: "example@pApoyo",
                cargoPersona: "personalApoyo",
                descripcionCargo: "es el personalApoyo xd"
            }
        ]

    }

    devolverPersonal(idTipoPersonal){

        let query = "";

    }

}

module.exports = Personal;