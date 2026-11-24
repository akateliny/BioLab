require('dotenv').config();

const { Pool } = require('pg');

const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
});

async function testarConexao() {
    try {
        const resultado = await pool.query('SELECT NOW()');

        console.log('Conexão com o Neon realizada com sucesso!');
        console.log('Horário do banco:', resultado.rows[0].now);

    } catch (erro) {
        console.error('Erro ao conectar com o banco:', erro.message);

    } finally {
        await pool.end();
    }
}

testarConexao();