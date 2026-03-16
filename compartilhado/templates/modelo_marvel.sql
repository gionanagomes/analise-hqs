-- ==========================================================
-- template de inserção: hq marvel
-- substitua os valores entre aspas simples
-- ==========================================================

-- 1. garantir que a tabela existe (deixe sempre no topo do arquivo)
create table if not exists log_marvel (
    serie text,
    hq text,
    id_painel text,
    personagens text,
    voz text,
    enquadramento text
);

-- 2. bloco de inserção (copie este bloco para cada novo painel)
insert into log_marvel (serie, hq, id_painel, personagens, voz, enquadramento) 
values (
    'nome_da_serie', -- ex: 'vingadores'
    'numero_edicao', -- ex: '01'
    'id_painel',     -- ex: 'pn01'
    'ids_personagens', -- ex: 'thor, hulk' (separados por vírgula)
    'legendas_voz',  -- ex: 'f(1), mudo'
    'enquadramento'  -- ex: 'plano_medio'
);

-- dica: lembre-se de terminar cada comando insert com ';'