# marvel: análise estatística

este subprojeto utiliza **data science** e **sql** para quantificar o ritmo e a densidade narrativa das publicações da marvel. o foco aqui é transformar o log de leitura em métricas estatísticas puras.

## fluxo de trabalho manual
1. **mineração:** os dados brutos são coletados em arquivos `.md` na pasta `logs/`.
2. **escrita sql:** os dados do log são convertidos manualmente em comandos `INSERT` dentro da pasta `scripts/`.
3. **análise:** o **pandas** consome esses scripts (via sqlite ou leitura direta) para gerar os gráficos estatísticos nos notebooks.

## 🎯 objetivos de análise
- **participação relativa:** percentual de painéis em que cada personagem aparece.
- **ritmo visual:** frequência de enquadramentos (ex: `primeiro_plano` vs `panoramica`).
- **share of voice:** distribuição de falas, pensamentos e narrações por edição.

## 🛠️ stack técnica
- **linguagem de dados:** sql (manual).
- **análise:** python (pandas / matplotlib).
- **ferramentas:** jupyter notebooks / sqlite.

## 📊 métricas principais
as análises buscam responder perguntas como: "quem é o personagem mais ativo na edição?" e "qual o estilo visual predominante do desenhista?".