const express = require('express');

const path = require('path');

const db = require('./database/db'); 

const app = express();

// Configurando as rotas
const routes = require('./routes/routes'); 

app.use(express.json());

app.use('/', routes);

app.listen(3333, () => {
    console.log('Servidor funcionando');
});