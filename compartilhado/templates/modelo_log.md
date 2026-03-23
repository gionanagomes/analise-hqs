# mineração de dados: [nome da hq]

## ficha técnica (metadados)
- **série:** 
- **edição:**
- **data de lançamento:** 
- **escritor:** 
- **desenhista:**
- **arte-finalista:** 
- **colorista:** 
- **letrista:** 
- **editor:** 
- **total de painéis:** 
- **total de balões de fala:**
- **total de balões de pensamento:**
- **total de balões de narração:**

## personagens da edição (conferência)
| id técnico | nome civil | alter ego | papel |
| :--- | :--- | :--- | :--- |
| `id_minúsculo` | [nome] | [alter ego] | [protagonista/apoio] |

## log de mineração (bruto)

| painel | personagens | vozes | enquadramento |
| :--- | :--- | :--- | :--- |
| **pn001** | capitao_america, alex_summers | f1, n1 | panoramico |
| **pn002** | avalanche | f2 | corpo_inteiro |
| **pn003** | off | n1 | detalhe |

## 💻 snippets de conexão
- **id_tabela_sql**: `log_marvel`
- **id_nodo_hq**: `merge (h:hq {serie: "nome", edicao: "00"})`