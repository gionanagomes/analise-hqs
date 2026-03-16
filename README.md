# análise de hqs: projeto de pipeline dupla

## acompanhamento do projeto
todo o planejamento, controle de qualidade (data quality) e metadados das edições são gerenciados através do notion:

[clique aqui para acessar o dashboard do projeto no notion](https://warm-fridge-60e.notion.site/dashboard-an-lise-de-HQs-323cfdafec1280f19538ff2831b0b165)

## a arquitetura do projeto
o repositório está dividido em dois ecossistemas independentes, cada um focado em uma tecnologia e objetivo de estudo:

### dc: análise de grafos (neo4j)
*focado no estudo de relacionamentos e conexões entre personagens durante o período dos novos 52.*
- **tecnologia**: neo4j / cypher;
- **objetivo**: mapear a rede de interações, densidade de conexões entre heróis e a evolução de nodos (personagens) em grafos complexos;
- **output**: visualização de redes de influência e centralidade.

### marvel: análise estatística (pandas)
*focado em métricas de performance e ritmo visual das publicações do marvel now.*
- **tecnologia**: python/pandas/jupyter notebooks;
- **objetivo**: analisar a distribuição de falas, tipos de enquadramentos cinematográficos e frequência de presença de personagens por edição;
- **output**: dashboards de estatística descritiva e análise de frequência.

### arquitetura por ecossistema
```
├── dc/                         # foco: neo4j & conexões
│   ├── logs/                   # arquivos .md da dc 
│   ├── queries/                # queries .cypher
│   ├── scripts/                # scripts para carga no neo4j
│   └── visualizacao/           # prints do grafo do neo4j e cards de rede
│
├── marvel/                     # foco: python & pandas 
│   ├── logs/                   # arquivos .md da marvel 
│   ├── notebooks/              # análises estatísticas (.ipynb)
│   └── visualizacao/           # gráficos do pandas (plots) e cards estatísticos
│
├── compartilhado/              # documentação compartilhada
│   ├── protocolo_geral.md      # guia de estilo
│   └── templates/              # modelos de tabelas vazias
│
└── README.md                   # portal principal e documentação
```

## protocolo de mineração
para garantir a integridade dos dados coletados manualmente (via markdown), estabeleci um protocolo rígido de entrada:
1. **agência narrativa**: distinção entre fala ``(f)``, pensamento ``(p)``, voz em off ``(f*)`` e narração ``(n)``;
2. **análise visual**: catalogação de enquadramentos (desde splash pages até inserts técnicos);
3. **normalização**: uso de IDs padronizados em minúsculas e sem acentuação para garantir a compatibilidade entre os sistemas.

## ferramentas utilizadas
- **notion**: gestão de metadados, controle de qualidade e kanban de leitura;
- **python (pandas/matplotlib)**: processamento de dados e visualização;
- **neo4j**: banco de dados orientado a grafos;
- **markdown**: interface leve para mineração de dados em tempo real.