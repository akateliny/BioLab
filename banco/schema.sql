CREATE TABLE IF NOT EXISTS conteudos (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    slug VARCHAR(100) UNIQUE NOT NULL,
    texto TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS experimentos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT NOT NULL,
    objetivo TEXT NOT NULL,
    materiais JSONB NOT NULL
);

CREATE TABLE IF NOT EXISTS perguntas (
    id SERIAL PRIMARY KEY,
    quiz VARCHAR(50) NOT NULL,
    pergunta TEXT NOT NULL,
    opcoes JSONB NOT NULL,
    resposta_correta INTEGER NOT NULL,
    explicacao TEXT NOT NULL,
    ordem INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS massas (
    id SERIAL PRIMARY KEY,
    sal NUMERIC(5,2) NOT NULL,
    massa_inicial NUMERIC(6,2) NOT NULL,
    massa_final NUMERIC(6,2) NOT NULL
);