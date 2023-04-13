const pool = require('./../conexion');

class Personal{

    async devolverPersonal(idTipoPersonal){

        let query = "SELECT tbl_persona.foto, tbl_persona.foto, tbl_persona.nombresPersona, tbl_persona.apellidosPersona, tbl_persona.correoPersona, tbl_persona.cargpPersona, tbl_persona.descripcionCargo, tbl_rama.nombreRama FROM tbl_persona INNER JOIN tbl_rama ON tbl_persona.idRama = tbl_rama.idRama WHERE tbl_rama.idRama = ?";

        let results = await pool.query(query, [idTipoPersonal]);
        let personal = results.map(persona => JSON.parse(JSON.stringify(persona)));

        return personal;
    }

}

module.exports = Personal;