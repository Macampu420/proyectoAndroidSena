const express = require('express');
const morgan = require('morgan');

const app = express();

app.set('port', process.env.PORT || 3000);
app.use(morgan('tiny'));

app.use(require('./routes/index'));

//inicializacion del servidor
app.listen(app.get('port'), () => console.log("App corriendo bien"));