-- informação da edição
create table if not exists edicoes_marvel (
    id_edicao text,
    serie text,
    edicao text,
    lancamento text,
    escritor text,
    desenhista text,
    arte_finalista text,
    colorista text,
    letrista text,
    editor text,
    primary key (id_edicao)
);

insert or ignore into edicoes_marvel (id_edicao, serie, edicao, lancamento, escritor, desenhista, arte_finalista, colorista, letrista, editor)
values (
    'fab_vingadores_01',
    'os fabulosos vingadores',
    '01',
    '2012',
    'rick remender',
    'john cassaday',
    'john cassaday',
    'laura martin',
    'chris eliopoulos',
    'tom brevoort'
);

-- informações de personagens
create table if not exists personagens_marvel (
    id_personagem text,
    universo text,
    nome_civil text,
    alter_ego text,
    outros_pseudonimos text,
    alinhamento text,
    especie text, 
    genero text,
    primary key (id_personagem)
);

insert or ignore into personagens_marvel (id_personagem, universo, nome_civil, alter_ego, outros_pseudonimos, alinhamento, especie, genero)
values (
    'johann_shmidt',
    'marvel',
    'johann shmidt',
    'caveira vermelha',
    'n/a',
    'vilão',
    'humano (aprimorado)',
    'masculino'
);

insert or ignore into personagens_marvel (id_personagem, universo, nome_civil, alter_ego, outros_pseudonimos, alinhamento, especie, genero)
values (
    'dominikos_petrakis',
    'marvel',
    'dominikos petrakis',
    'avalanche',
    'n/a'
)

-- adição dos painéis
create table if not exists paineis_marvel (
    id_painel text,
    id_edicao text,
    personagens text,
    vozes text,
    enquadramento text,
    primary key (id_painel, id_edicao)
);

insert or ignore into paineis_marvel (id_painel, id_edicao, personagens, vozes, enquadramento)
values (
    'pn001',
    'fab_vingadores_01',
    'avalanche',
    'f_johann_shmidt(2), mudo_avalanche',
    'primeiro plano'
);

insert or ignore into paineis_marvel (id_painel, id_edicao, personagens, vozes, enquadramento)
values (
    'pn002',
    'fab_vingadores_01',
    'avalanche',
    'f_johann_shmidt(3), mudo_avalanche',
    'primeiro plano'
);

insert or ignore into paineis_marvel (id_painel, id_edicao, personagens, vozes, enquadramento)
values (
    'pn003',
    'fab_vingadores_01',
    'avalanche',
    'f_johann_shmidt(3), mudo_avalanche',
    'primeiro plano'
);