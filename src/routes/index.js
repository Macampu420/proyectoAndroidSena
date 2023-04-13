const express = require('express');
const router = express.Router();
const Personal = require('./../models/Personal');

const objPersonal = new Personal();

router.get('/:tipoPersonal', (req, res) => {

    switch(req.params.tipoPersonal){

        case 'directivos':
            res.status(200).json(objPersonal.devolverDirectivos());
            break;
            
        case 'instructores':
            res.status(200).json(objPersonal.devolverInstructores());
            break;
            
        case 'personalApoyo':
            res.status(200).json(objPersonal.devolverPersonalApoyo());
            break;
    }
    res.end();
});

router.post('/registroPersona', (req, res) => {

})

module.exports = router;