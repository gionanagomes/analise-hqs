// ==========================================================
// template de inserção: hq dc
// substitua os valores entre aspas duplas
// ==========================================================

// 1. criar ou localizar o nodo da hq (roda uma vez por arquivo)
merge (h:hq {
    serie: "nome_da_serie", 
    edicao: "numero_edicao"
})

// 2. bloco de personagem e relação (copie este bloco para cada personagem em cada painel)
// substitua 'id_personagem' pelo id em letras minúsculas
merge (p:personagem {id: "id_personagem"})
create (p)-[:apareceu_em {
    painel: "id_painel",
    voz: "legenda_voz",
    enquadramento: "tipo_enquadramento"
}]->(h);

// dica: o 'merge' evita duplicar o personagem se ele já existir no grafo