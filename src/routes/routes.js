const express = require('express');

const path = require('path');

//Pegando do index 
const router = express.Router();

router.get('/', (req, res) => {
    res.sendFile(path.join(__dirname + "./../pages/home.html"));
})

const pessoaController = require('../controllers/pessoaController');

const servicoController = require('../controllers/servicoController');

const pacotesController = require('../controllers/pacotesController');

const compromissoController = require('../controllers/compromissoController');

const prestarController = require('../controllers/prestarController');

const loginController = require('../controllers/loginController');


//Rotas pessoa 
router.get('/pessoa', loginController.autenticarToken, pessoaController.listarPessoas);

router.get('/pessoa/:id_pessoa', pessoaController.buscarPessoa);

router.post('/pessoa', pessoaController.adicionarPessoa);

router.patch('/pessoa/:id_pessoa', loginController.autenticarToken, pessoaController.atualizarPessoa);

router.delete('/pessoa/:id_pessoa', loginController.autenticarToken, pessoaController.deletarPessoa);

//Rotas Serviço 
router.get('/servico', servicoController.listarServico);

router.get('/servico/:id_servico', servicoController.buscarServico);

router.post('/servico', loginController.autenticarToken, servicoController.adicionarServico);

router.patch('/servico/:id_servico', loginController.autenticarToken, servicoController.atualizarServico);

router.delete('/servico/:id_servico', loginController.autenticarToken, servicoController.deletarServico);

//Rotas Pacotes 
router.get('/pacotes', pacotesController.listarPacotes);

router.get('/pacotes/:id_pacote', pacotesController.buscarPacote);

router.post('/pacotes', loginController.autenticarToken, pacotesController.adicionarPacote);

router.patch('/pacotes/:id_pacote', loginController.autenticarToken, pacotesController.atualizaPacote);

router.delete('/pacotes/:id_pacote', loginController.autenticarToken, pacotesController.deletarPacote);


//Rotas Compromisso 
router.use('/compromisso', loginController.autenticarToken);
//Todas as rotas compromisso terão que passa pelo autenticar token

router.get('/compromisso', compromissoController.listarCompromisso);

router.get('/compromisso/:id_compromisso', compromissoController.buscarCompromisso);

router.get('/compromisso/data/:data_compromisso', compromissoController.buscarCompromissoData);

router.post('/compromisso', compromissoController.adcionarCompromisso);

router.patch('/compromisso/:id_compromisso', compromissoController.atualizarCompromisso);

router.delete('/compromisso/:id_compromisso', compromissoController.deletarCompromisso);


//Rotas Prestar 
router.get('/prestar', prestarController.listarPrestar);

router.get('/prestar/:id_prestar', prestarController.buscarPrestar);

router.post('/prestar', prestarController.adicionarPrestar);

router.patch('/prestar/:id_prestar', prestarController.atualizaPrestar);

router.delete('/prestar/:id_prestar', prestarController.deletarPrestar);


//Rotas login 
router.post('/login', loginController.loginCliente);

module.exports = router; 