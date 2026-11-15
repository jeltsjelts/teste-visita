# 🏛️ Ecossistema Digital & Sinalética Patrimonial — Museu Casa do Tatuapé

Plataforma web interativa desenvolvida para mediação cultural, difusão patrimonial e gestão de visitação do **Museu Casa do Tatuapé** (São Paulo, SP), um exemplar histórico da arquitetura colonial paulista em taipa de pilão datado de 1698.

O projeto integra **sinalética digital presencial** (via QR Codes físicos distribuídos nos ambientes do museu) a quatro módulos web responsivos hospedados em container único:
1. **Visita Virtual Interativa (`index.html`):** Exploração fotográfica no estilo *point-and-click* com planta baixa vetorial sincronizada.
2. **Ficha Arquitetônica & Audioguia (`arquitetura.html`):** Conteúdo histórico e construtivo com player de áudio em `.mp3` e transcrição acessível.
3. **Livro de Visitas Digital (`livro-visitas.html`):** Registro colaborativo de visitantes integrado a banco de dados em nuvem.
4. **Dashboard Administrativo (`painel-gestao-98.html`):** Painel analítico restrito para monitoramento demográfico e exportação de métricas.

---

## ✨ Funcionalidades e Módulos

### 🧭 1. Visita Virtual Interativa (`index.html`)
* **Navegação *Point-and-Click*:** Transição fluida entre 16 pontos de vista cobrindo o alpendre, hall central, quartos térreos, núcleo arqueológico, sala administrativa e mezaninos superiores (sótãos norte e sul).
* **Hotspots Direcionais:** Botões interativos posicionados com coordenadas percentuais sobre portas, escadas e vãos de passagem, adaptáveis a qualquer tamanho de tela.
* **Minimapa Sincronizado:** Planta baixa vetorial em SVG no canto superior direito que destaca o cômodo ativo e permite navegação direta ao clicar nos nós.

### 📜 2. Ficha Arquitetônica & Audioguia (`arquitetura.html`)
* **Player de Audioguia Oficial (`audio/audio.mp3`):** Reprodutor HTML5 customizado com barra de progresso clicável, controle de reprodução e leitura automática de duração.
* **Acessibilidade:** Transcrição textual expansível detalhando a técnica de taipa de pilão, telhado de duas águas, esquadrias sem vidro e pisos originais.

### ✍️ 3. Livro de Visitas Digital (`livro-visitas.html`)
* **Formulário Descomplicado:** Coleta o nome (único campo obrigatório) e dados opcionais de idade, bairro/cidade de origem e mensagem do visitante.
* **Mural Público em Tempo Real:** Exibe as últimas assinaturas registradas diretamente no banco de dados em nuvem (com *fallback* automático para `localStorage` em ambiente local).

### 📊 4. Dashboard de Gestão (`painel-gestao-98.html`)
* **Acesso Restrito:** Página desvinculada dos menus públicos, protegida contra indexação (`noindex, nofollow`) e bloqueada por senha administrativa.
* **Indicadores e Gráficos:** Cálculo automático de total de visitas, média de idade, principal localidade de origem, taxa de engajamento com mensagens, gráficos de faixa etária e origem, além de exportação completa em `.csv`.

---

## 📱 Sinalética Digital via QR Codes

Para conectar o espaço físico do museu à experiência digital sem necessidade de aplicativos nativos, o projeto adota **sinalética digital baseada em QR Codes**. Cada URL acessível do sistema possui um código QR dedicado (`qr1` a `qr4`), permitindo que totens, placas expositivas ou materiais impressos direcionem o visitante instantaneamente ao conteúdo desejado pelo smartphone:

| Arquivo QR Code | Rota de Destino | Finalidade na Sinalética do Museu |
| :--- | :--- | :--- |
| **`qr1`** | `/index.html` | Acesso direto à **Visita Virtual Interativa** (totem de entrada / acessibilidade entre pavimentos). |
| **`qr2`** | `/arquitetura.html` | Acesso à **Ficha Arquitetônica e Audioguia** nas placas informativas da edificação. |
| **`qr3`** | `/livro-visitas.html` | Acesso rápido ao **Livro de Visitas Digital** na saída do circuito expositivo. |
| **`qr4`** | `/painel-gestao-98.html` | Atalho administrativo restrito para a equipe técnica acessar o **Dashboard de Métricas**. |

---

## 🛠️ Tecnologias Utilizadas

### Frontend & Interface
* **HTML5 Semântico:** Estruturação acessível das páginas, reprodução nativa de áudio (`<audio>`) e blocos expansíveis de transcrição (`<details>/<summary>`).
* **CSS3 Moderno (Flexbox, Grid & Keyframes):** Estilização em tela cheia da visita virtual, efeitos de transparência (`backdrop-filter`), transições suaves entre cenas e animações de pulso nos *hotspots*.
* **JavaScript (ES6+):** Motor de navegação *point-and-click* orientado a estados, manipulação dinâmica do DOM, integração assíncrona via `Fetch API` com o banco de dados e controle customizado do player de áudio.
* **SVG (Scalable Vector Graphics):** Representação vetorial *inline* da planta baixa do pavimento térreo com atualização dinâmica de estado.
* **Tailwind CSS (via CDN):** Estilização responsiva *mobile-first* e paleta visual personalizada para as páginas de arquitetura, livro de visitas e painel de gestão.
* **Chart.js:** Renderização de gráficos interativos (barras e rosca) para análise demográfica no dashboard administrativo.
* **Font Awesome 6 & Google Fonts (*Playfair Display* e *Inter*):** Iconografia vetorial e tipografia editorial.

### Backend as a Service (BaaS) & Banco de Dados
* **Supabase (PostgreSQL + REST API):** Persistência em nuvem dos registros do Livro de Visitas e alimentação em tempo real do Dashboard Administrativo.
* **Row Level Security (RLS):** Políticas de segurança configuradas no PostgreSQL para permitir inserção (`INSERT`) e leitura (`SELECT`) públicas controladas pela chave anônima (`anon`).

### Infraestrutura, Containerização & Deploy
* **Docker (`nginx:alpine`):** Empacotamento da aplicação em imagem Linux ultraleve para garantir portabilidade e padronização entre desenvolvimento e produção.
* **Nginx:** Servidor web de alta performance responsável pela entrega dos arquivos estáticos (`HTML`, imagens `.jpg`, áudio `.mp3` e `QR Codes`).
* **Git & GitHub:** Controle de versão e repositório central do código e ativos digitais.
* **Render:** Plataforma de cloud utilizada para build automatizado via `Dockerfile` e publicação contínua com certificado SSL/HTTPS.

---

## 🗂️ Estrutura do Repositório

```text
├── Dockerfile                   # Configuração do container Nginx para deploy em nuvem
├── index.html                   # Módulo 1: Visita Virtual Interativa (Point-and-Click)
├── arquitetura.html             # Módulo 2: Ficha Arquitetônica e Player de Audioguia
├── livro-visitas.html           # Módulo 3: Livro de Visitas Digital Público
├── painel-gestao-98.html        # Módulo 4: Dashboard Administrativo Restrito
├── README.md                    # Documentação técnica do projeto
├── audio/                       # Arquivos de narração em áudio
│   └── audio.mp3
├── qrcodes/                     # Ativos de sinalética digital (QR Codes por rota)
│   ├── qr1.png                  # QR Code -> Visita Virtual (/index.html)
│   ├── qr2.png                  # QR Code -> Arquitetura e Audioguia (/arquitetura.html)
│   ├── qr3.png                  # QR Code -> Livro de Visitas (/livro-visitas.html)
│   └── qr4.png                  # QR Code -> Dashboard Restrito (/painel-gestao-98.html)
└── imagens/                     # Acervo fotográfico otimizado dos ambientes
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
