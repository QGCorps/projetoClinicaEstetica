const db = require('../database/db');

const Joi = require('joi');

const prestarSchema = Joi.object ({
    status_prestar: Joi.string().required(),
    situacao: Joi.string().required(),
    id_compromisso: Joi.string().required(),
    id_servico: Joi.string().required(),
});

//Listar prestar 
exports.listarPrestar = (req, res) => {
    db.query('SELECT * FROM prestar', (err, result) => {
        if (err) {
            console.error('Erro ao buscar prestar:', err);
            res.status(500).json({ error: 'Erro interno do servidor' });
            return;
        }
        res.json(result);
    });
}

//Buscar prestar por id
exports.buscarPrestar = (req, res) => {
    const { id_prestar } = req.params;

    db.query('SELECT * FROM prestar WHERE id_prestar = ?', id_prestar, (err, result) => {
        if (err) {
            console.error('Erro ao buscar prestar:', err);
            res.status(500).json({ error: 'Erro interno do servidor' });
            return;
        }
        if (result.length === 0) {
            res.status(404).json({ error: 'Prestar não encontrado' });
            return;
        }
        res.json(result[0]);
    });
}

//Adicionar novo prestrar
exports.adicionarPrestar = (req, res) => {
    const { status_prestar, situacao, id_compromisso, id_servico } = req.body;

    const { error } = prestarSchema.validate({ status_prestar, situacao, id_compromisso, id_servico });

    if (error) {
        res.status(400).json({ error: 'Dados de prestar inválidos' });
        return;
    }

    const novoPrestar = {
        status_prestar,
        situacao,
        id_compromisso,
        id_servico
    };

    db.query('INSERT INTO prestar SET ?', novoPrestar, (err, result) => {
        if (err) {
            console.error('Erro ao adicionar prestar:', err);
            res.status(500).json({ error: 'Erro interno do servidor' });
            return;
        }
        res.json({ message: 'Prestar adicionado com sucesso' });
    });
};

//Atualizar pretar
exports.atualizaPrestar = (req, res) => {
    const { id_prestar } = req.params;
    const { status_prestar, situacao, id_compromisso, id_servico } = req.body;

    const { error } = prestarSchema.validate({ status_prestar, situacao, id_compromisso, id_servico });

    if (error) {
        res.status(400).json({ error: 'Dados de prestar inválidos' });
        return;
    }

    const prestarAtualizado = {
        status_prestar,
        situacao,
        id_compromisso,
        id_servico
    };

    db.query('UPDATE prestar SET ? WHERE id_prestar = ?', [prestarAtualizado, id_prestar], (err, result) => {
        if (err) {
            console.error('Erro ao atualizar prestar:', err);
            res.status(500).json({ error: 'Erro interno do servidor' });
            return;
        }
        res.json({ message: 'Prestar atualizado com sucesso' });
    });
};

//Deletar um prestar	
exports.deletarPrestar = (req, res) => {
    const { id_prestar } = req.params;

    db.query('DELETE FROM prestar WHERE id_prestar = ?', id_prestar, (err, result) => {
        if (err) {
            console.error('Erro ao deletar prestar:', err);
            res.status(500).json({ error: 'Erro interno do servidor' });
            return;
        }
        res.json({ message: 'Prestar deletado com sucesso' });
    });
};