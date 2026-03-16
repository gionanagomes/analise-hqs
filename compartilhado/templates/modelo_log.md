# 📚 mineração de dados: [nome da hq]

## 🛠️ ficha técnica (metadados)
| campo | informação |
| :--- | :--- |
| **série** | [ex: demon knights] |
| **edição** | #01 |
| **editora** | [dc / marvel] |
| **status** | [extração / processamento / concluído] |

---

## 👥 personagens da edição (conferência)
| id técnico | nome | papel |
| :--- | :--- | :--- |
| `id_minúsculo` | [nome] | [protagonista/apoio] |

---

## 📑 log de mineração (bruto)
> **padrão:** id_painel: personagens | voz | enquadramento

### página 01
- [ ] **pn01**: [id] | [voz] | [enquadramento]
- [ ] **pn02**: [id] | [voz] | [enquadramento]

---

## 🎨 insights para o canva & redes
- **clima da edição:** [ex: sombrio, muita ação]
- **destaque visual:** [ex: a luta na ponte da pág 05]
- **fatos curiosos:** [ex: primeira vez que tal personagem usa tal poder]

---

## 💻 snippets de conexão
- **id_tabela_sql**: `log_marvel`
- **id_nodo_hq**: `merge (h:hq {serie: "nome", edicao: "00"})`