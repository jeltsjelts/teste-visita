# 🏛️ Visita Virtual & Ficha Arquitetônica — Museu Casa do Tatuapé

Aplicação web interativa desenvolvida para exploração digital e difusão patrimonial do **Museu Casa do Tatuapé** (São Paulo, SP), um exemplar histórico da arquitetura colonial paulista em taipa de pilão datado de 1698.

O projeto reúne dois módulos integrados em uma única aplicação leve e responsiva:
1. **Visita Virtual Interativa (`index.html`):** Navegação no estilo *point-and-click* baseada em fotografias reais de todos os ambientes internos e externos, acompanhada de planta baixa vetorial (SVG) sincronizada em tempo real.
2. **Ficha Técnica & Audioguia (`arquitetura.html`):** Apresentação histórica e arquitetônica do edifício com player de áudio embutido, transcrição acessível e especificações construtivas.

---

## ✨ Funcionalidades

### 🧭 Visita Virtual (`index.html`)
* **Navegação *Point-and-Click*:** Transição fluida entre 16 pontos de vista cobrindo o alpendre, hall central, quartos térreos, núcleo arqueológico, sala administrativa e os dois mezaninos superiores (sótãos norte e sul).
* **Hotspots Direcionais:** Botões interativos posicionados com coordenadas percentuais sobre portas, escadas e vãos de passagem para orientar o percurso do visitante em qualquer resolução de tela.
* **Minimapa Sincronizado:** Planta baixa simplificada em SVG no canto superior direito que destaca dinamicamente o cômodo atual e permite teletransporte direto ao clicar nos nós.

### 📜 Ficha Arquitetônica & Audioguia (`arquitetura.html`)
* **Player de Áudio Customizado:** Reprodutor HTML5 com barra de progresso interativa, controle de reprodução e contador de tempo.
* **Acessibilidade:** Transcrição textual completa do audioguia detalhando a técnica de taipa de pilão, telhado de duas águas, esquadrias sem vidro e pisos originais.
* **Navegação Cruzada:** Alternância direta entre a ficha arquitetônica e a visita virtual.

---

## 🛠️ Tecnologias Utilizadas

### Frontend & Estrutura Web
* **HTML5 Semântico:** Estruturação acessível das páginas, elementos nativos `<audio>` para o audioguia e `<details>/<summary>` para transcrição expansível.
* **CSS3 Moderno (Custom Properties, Flexbox, Grid & Keyframes):** Estilização da visita virtual em tela cheia, efeitos de desfoque (`backdrop-filter`), transições suaves de opacidade entre cenas e animações de pulso nos *hotspots*.
* **JavaScript (ES6+):** Motor de navegação *point-and-click* baseado em dicionário de estados (`scenes`), manipulação dinâmica do DOM, injeção de botões interativos e sincronização em tempo real com o minimapa.
* **SVG (Scalable Vector Graphics):** Desenho vetorial *inline* da planta baixa do pavimento térreo, garantindo nitidez em qualquer dispositivo e controle de estado via classes CSS.

### Estilização, Tipografia & Ícones
* **Tailwind CSS (via CDN):** Framework *utility-first* utilizado na página da ficha arquitetônica (`arquitetura.html`) para layout mobile-first e paleta personalizada em tons coloniais.
* **Google Fonts (*Playfair Display* & *Inter*):** Combinação tipográfica serifada para títulos históricos e sem serifa para leitura fluida em telas.
* **Font Awesome 6:** Biblioteca de ícones vetoriais utilizada nos controles do player de áudio, acessibilidade e barra de navegação.

### Infraestrutura, Containerização & Deploy
* **Docker:** Empacotamento da aplicação utilizando a imagem oficial **`nginx:alpine`** para garantir um container ultraleve, seguro e portátil.
* **Nginx:** Servidor web de alta performance configurado para entrega rápida de arquivos estáticos (`HTML` e imagens `.jpg`).
* **Git & GitHub:** Versionamento de código e integração contínua.
* **Render:** Plataforma de nuvem utilizada para build automatizado via `Dockerfile` e hospedagem em produção com HTTPS.

---

## 🗂️ Estrutura do Repositório

```text
├── Dockerfile               # Configuração do container Nginx leve para deploy
├── index.html               # Página principal: Visita Virtual Interativa
├── arquitetura.html         # Página complementar: Ficha Arquitetônica e Audioguia
├── README.md                # Documentação do projeto
└── imagens/                 # Acervo fotográfico otimizado para web
    ├── alpendrev2.jpg
    ├── corredor_oeste.jpg
    ├── geral.jpg
    ├── hall.jpg
    ├── hall_leste.jpg
    ├── porta_adm.jpg
    ├── quarto1.jpg
    ├── quarto2.jpg
    ├── quarto2_detalhe.jpg
    ├── quarto3.jpg
    ├── quarto3_escada.jpg
    ├── quarto4.jpg
    ├── sala_adm.jpg
    ├── sotao_norte.jpg
    ├── sotao_norte_detalhe.jpg
    ├── sotao_sul.jpg
    └── sotao_sul_oeste.jpg
