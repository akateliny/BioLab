const pool = require('./conexao');

async function buscarConteudos() {
    const resultado = await pool.query(
        'SELECT * FROM conteudos ORDER BY id'
    );

    return resultado.rows;
}

async function buscarExperimentos() {
    const resultado = await pool.query(
        'SELECT * FROM experimentos ORDER BY id'
    );

    return resultado.rows;
}

async function buscarPerguntas(quiz) {
    const resultado = await pool.query(
        'SELECT * FROM perguntas WHERE quiz = $1 ORDER BY ordem',
        [quiz]
    );

    return resultado.rows;
}

async function buscarMassas() {
    const resultado = await pool.query(
        'SELECT * FROM massas ORDER BY sal'
    );

    return resultado.rows;
}

module.exports = {
    buscarConteudos,
    buscarExperimentos,
    buscarPerguntas,
    buscarMassas
};