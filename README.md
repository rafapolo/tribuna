# -| Tribuna Eleitoral |-

[![auto-de-fe](doc/francisco_rizi-auto_de_fe.jpg)](https://upload.wikimedia.org/wikipedia/commons/2/28/Francisco_rizi-auto_de_fe.jpg)


----
### O que é?
Esse projeto [integra, estrutura e otimiza](doc/metodologia.md) os dados brutos da **Prestação de Contas do Tribunal Superior Eleitoral** disponível no [Repositório de Dados Eleitorais](http://www.tse.jus.br/eleicoes/estatisticas/repositorio-de-dados-eleitorais/) num Banco de Dados Relacional preparado para inquéritos, além de propor ferramentas abertas que facilitem sua relevante investigação.

----
### Por quê?

Em 2004 foi necessário integrar os caóticos dados providos pelo TSE na pesquisa e apuração de **Jornalismo Investigativo** que resultou na matéria [As quatro irmãs](http://apublica.org/2014/06/as-quatro-irmas/);
> Negócios familiares, proximidade com governos, financiamento de campanhas e diversificação de atividades – da telefonia ao setor armamentício – compõem a história das gigantes Odebrecht, OAS, Camargo Corrêa e Andrade Gutierrez.

Porém, muitos *"furos"* e **indícios de corrupção e atos ilícitos** ainda podem ser evidenciados cruzando esses dados entre *Doadores, Candidatos e Partidos* dos últimos 15 anos, revelando, a princípio, os financiamentos e relações do Poder Público. Fatos ainda inexplorados e ocultos na *Política Brasileira* agora se tornam um pouco mais acessíveis e apuráveis.

Se um *Tribunal* é o lugar onde se administra Justiça, o TSE peca. Voltemos a *Tribuna*, local elevado para espetáculos e debates.

---
### Download

[last database dump](http://extrapolo.com/projeto/tse/tse2016.sql.tar.bz2)

---

## to do
- [x] otimizar foreign keys nas tabelas
- [x] ajustar manualmente dados com ano incorreto
- [x] ajustar data (de varchar pra date)
  - [ ] em alguns dados < 2008 data foi importada como recurso; trocar
- [ ] WebApp básico com filtros
- [ ] documentar quantidade de campos nulos, há muitos doadores ocultos.
- [ ] exportar dump em .dot pra visualizar como Grafo no [Gephi](http://gephi.org)
