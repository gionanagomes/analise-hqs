# dc: análise de grafos

este subprojeto foca-se na construção manual de um **grafo de conhecimento** sobre o universo dc. aqui, a narrativa é transformada em nodos e conexões para mapear a influência dos personagens.

## fluxo de trabalho manual
1. **mineração:** os dados brutos são coletados em arquivos `.md` na pasta `logs/`.
2. **escrita cypher:** com base nos logs, os comandos de criação de grafos são escritos manualmente na pasta `scripts/`.
3. **execução:** o código é inserido no **neo4j** para gerar a visualização da rede.

## objetivos de análise
- **centralidade de grau:** identificar quais personagens são os centros de interação da história.
- **comunidades:** visualizar grupos e núcleos de heróis ou vilões através de cores e agrupamentos.
- **densidade de rede:** medir o quão integrada é a equipe (ex: liga da justiça) nesta edição específica.

## stack técnica
- **linguagem de consulta:** cypher (manual).
- **banco de dados:** neo4j.
- **visualização:** neo4j bloom / canva.

## 📊 exemplos de queries (manual)
os scripts utilizam comandos `MERGE` e `CREATE` para garantir a integridade dos dados e evitar duplicidade de personagens.