const pool = require('./conexao');

const {
    buscarConteudos,
    buscarExperimentos,
    buscarPerguntas,
    buscarMassas
} = require('./consultas');

async function testarConsultas() {
    try {
        console.log('\n--- CONTEÚDOS ---');
        console.log(await buscarConteudos());

        console.log('\n--- EXPERIMENTOS ---');
        console.log(await buscarExperimentos());

        console.log('\n--- PERGUNTAS INICIAIS ---');
        console.log(await buscarPerguntas('inicial'));

        console.log('\n--- PERGUNTAS FINAIS ---');
        console.log(await buscarPerguntas('final'));

        console.log('\n--- MASSAS ---');
        console.log(await buscarMassas());

        console.log('\nTodas as consultas foram realizadas com sucesso!');

    } catch (erro) {
        console.error('Erro ao consultar o banco:', erro.message);

    } finally {
        await pool.end();
    }
}

testarConsultas();