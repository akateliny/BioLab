INSERT INTO conteudos (titulo, slug, texto) VALUES

(
    'Osmose',
    'osmose',
    'Osmose é o movimento da água através de uma membrana semipermeável, indo do meio menos concentrado em solutos para o meio mais concentrado, buscando o equilíbrio entre os meios.'
),

(
    'Meio Hipotônico',
    'hipotonico',
    'O meio hipotônico possui menor concentração de solutos em relação ao interior da célula. Assim, a água tende a entrar na célula por osmose.'
),

(
    'Meio Isotônico',
    'isotonico',
    'O meio isotônico possui concentrações de solutos equivalentes nos dois lados da membrana. Por isso, não há fluxo líquido de água.'
),

(
    'Meio Hipertônico',
    'hipertonico',
    'O meio hipertônico possui maior concentração de solutos em relação ao interior da célula. Assim, a água tende a sair da célula por osmose.'
);

INSERT INTO experimentos (
    nome,
    descricao,
    objetivo,
    materiais
) VALUES (
    'Osmose na batata',
    'Experimento que demonstra o processo de osmose utilizando pedaços de batata colocados em soluções com diferentes concentrações de sal.',
    'Observar como a concentração de sal no meio externo influencia a movimentação da água e a massa da batata.',
    '[
        "Batatas",
        "Sal de cozinha",
        "Água",
        "Copos transparentes",
        "Balança",
        "Colher",
        "Faca",
        "Recipientes para as soluções"
    ]'::jsonb
);







INSERT INTO perguntas (
    quiz,
    pergunta,
    opcoes,
    resposta_correta,
    explicacao,
    ordem
) VALUES


(
    'inicial',
    'O que é osmose?',
    '[
        "Movimento de sais através da membrana",
        "Movimento da água através de uma membrana semipermeável",
        "Produção de energia pela célula",
        "Divisão celular"
    ]'::jsonb,
    1,
    'A osmose é o movimento da água através de uma membrana semipermeável.',
    1
),

(
    'inicial',
    'O que acontece quando uma célula é colocada em um meio hipertônico?',
    '[
        "A água tende a sair da célula",
        "A água tende a entrar na célula",
        "A célula produz mais água",
        "Nada acontece"
    ]'::jsonb,
    0,
    'No meio hipertônico, a concentração de solutos é maior fora da célula, fazendo a água tender a sair.',
    2
),

(
    'inicial',
    'O que caracteriza um meio isotônico?',
    '[
        "Maior concentração de solutos fora da célula",
        "Menor concentração de solutos fora da célula",
        "Concentrações equivalentes de solutos nos dois meios",
        "Ausência de água"
    ]'::jsonb,
    2,
    'No meio isotônico, as concentrações de solutos são equivalentes nos dois lados da membrana.',
    3
),


(
    'final',
    'Em qual direção a água se movimenta durante a osmose?',
    '[
        "Do meio mais concentrado em solutos para o menos concentrado",
        "Do meio menos concentrado em solutos para o mais concentrado",
        "Sempre para dentro da célula",
        "Sempre para fora da célula"
    ]'::jsonb,
    1,
    'A água tende a passar do meio menos concentrado em solutos para o mais concentrado.',
    1
),

(
    'final',
    'O que acontece com uma batata colocada em uma solução muito concentrada de sal?',
    '[
        "Tende a ganhar água",
        "Tende a perder água",
        "Não sofre nenhuma alteração",
        "Produz sal"
    ]'::jsonb,
    1,
    'A solução concentrada em sal favorece a saída de água das células da batata.',
    2
),

(
    'final',
    'O que acontece em um meio hipotônico?',
    '[
        "A água tende a sair da célula",
        "A água tende a entrar na célula",
        "Não existe movimentação de água",
        "A célula perde todos os seus sais"
    ]'::jsonb,
    1,
    'No meio hipotônico, a concentração de solutos é menor fora da célula, fazendo a água tender a entrar.',
    3
);


INSERT INTO massas (
    sal,
    massa_inicial,
    massa_final
) VALUES

(0, 10.00, 11.20),

(5, 10.00, 10.30),

(10, 10.00, 8.50);