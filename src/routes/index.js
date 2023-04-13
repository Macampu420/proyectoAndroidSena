const express = require('express');
const router = express.Router();
const Personal = require('./../models/Personal');

const objPersonal = new Personal();

router.get('/api/:tipoPersonal', async (req, res) => {
    let personal;

    switch(req.params.tipoPersonal){

        case 'directivos':
            personal = await objPersonal.devolverPersonal(1);
            break;
            
        case 'instructores':
            personal = await objPersonal.devolverPersonal(2);
            break;
            
        case 'personalApoyo':
            personal = await objPersonal.devolverPersonal(3);
            break;
    }

    res.status(200).send(JSON.stringify({personal}));
    res.end();
});

router.get('/registroPersona', async (req, res) => {

})

module.exports = router;