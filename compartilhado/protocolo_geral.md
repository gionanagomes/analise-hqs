# protocolo de mineração de hqs

este documento define as normas de recolha de dados para garantir que mesmo a mineração feita via telemóvel seja compatível com as análises no pandas e neo4j.

## regras de formatação (essencial)
- **caixa baixa**: escrever sempre tudo em letras minúsculas (``batman``, não ``Batman``);
- **sem acentuação**: não usar acentos ou cedilhas nos termos técnicos e IDs (narração, não narração; cenário, não cenário);
- **separadores**: usar vírgula seguida de espaço para separar múltiplos itens no mesmo campo (ex: f(1), p(1)).

## legendas de voz (agência narrativa)
*indica como o personagem se expressou no painel.*
| sigla | termo | descrição |
| --- | --- | --- |
| ``f(n)`` | fala | balão de fala comum (personagem visível) |
|``off(n)`` | off | voz vinda de fora do enquadramento |
| ``p(n)`` | pensamento | balão em formato de nuvem |
| ``n(n)`` | narração | caixas de texto ou recordatórios |
| ``mudo`` | mudo | personagem presente, mas sem qualquer texto |

## enquadramentos (ritmo visual)
*define a perspetiva da "câmera" no painel.*
- ``pagina_inteira``: o desenho ocupa a página toda (ou duas);
- ``primeiro_plano``: foco no rosto ou num detalhe muito próximo;
- ``plano_medio``: personagem da cintura para cima;
- ``corpo_inteiro``: personagem visível da cabeça aos pés;
- ``panoramica``: foco no ambiente ou em grandes escalas;
- ``detalhe``: destaque para um objeto ou elemento técnico específico;
- ``sobreposicao``: um painel pequeno posicionado sobre outro maior.

## entidades especiais (ids de sistema)
*usar para elementos que não são os protagonistas, mas que têm relevância.*
- ``cenario``: painéis focados apenas no ambiente;
- ``objeto``: itens cruciais para a trama (ex: anel_lanterna);
- ``figurante``: personagem sem nome com fala ou ação pontual;
- ``multidao``: grupo de pessoas sem destaque individual;
- ``narrador_onisciente``: caixas de texto que não pertencem a personagens da história.

## estrutura do arquivo .md (exemplo)
```
| painel | personagens | voz | enquadramento |
| :--- | :--- | :--- | :--- |
| pn01 | batman, lanterna_verde | f(1), off(1) | plano_medio |
| pn02 | cenario | n(1) | panoramica |
| pn03 | batman | mudo | primeiro_plano |
```

## casos especiais
- **personagem narra e aparece**: listar o id em personagens e em voz colocar todas as ações. ex: ``f(1)``, ``n(1)``.
- **personagem apenas aparece (silencioso)**: listar o id em personagens e colocar mudo na voz.
- **narrador externo**: usar o id do personagem que narra, mesmo que ele não esteja desenhado. se for uma voz sem dono, usar ``narrador_onisciente``.