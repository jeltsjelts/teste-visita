# 🏛️ Tour Virtual 3D - Casa Colonial (Século XVIII)

Protótipo de **Visita Virtual Imersiva em 3D** desenvolvido para execução direta no navegador (*Web-based VR/3D*), sem a necessidade de instalação de aplicativos ou plugins adicionais.

O módulo faz parte da solução integrada de **Sinalética e Experiência Digital** para museus históricos, reproduzindo a volumetria, a arquitetura em taipa/barro e a distribuição espacial de uma casa colonial brasileira do século XVIII.

---

## 📐 Especificações da Modelagem Arquitetônica

O modelo 3D foi desenvolvido proceduralmente via **Three.js** tomando como base as elevações técnicas e plantas históricas:

* **Fachadas e Volumetria:** Frontão triangular nas elevações Norte e Sul acompanhando a inclinação do telhado de duas águas com cobertura em telhas de barro.
* **Técnica Construtiva:** Paredes com acabamento em taipa de pilão / barro e vigamentos de madeira rústica.
* **Entrada (Leste):** Porta principal rústica em madeira sem adornos, ladeada por janelas coloniais com grades.
* **Cozinha (Sul):** Presença de fogão de lenha tradicional com chaminé e aberturas para ventilação.
* **Quartos (Norte / Oeste):** Ambientes desimpedidos com aberturas de janelas para estudo da luz natural e circulação de ar na arquitetura colonial.

---

## 🛠️ Tecnologias Utilizadas

* **[Three.js (r128)](https://threejs.org/):** Motor gráfico WebGL para renderização da cena 3D, sombras dinâmicas (`PCFSoftShadowMap`) e iluminação ambiente/solar.
* **[OrbitControls]:** Navegação interativa simplificada controlada exclusivamente via **mouse ou toque em telas táticas** (rotação 360°, pan e zoom).
* **[Tailwind CSS]:** Interface de usuário (*UI Overlay*) responsiva e estilizada para suporte de leitura e contexto histórico.
* **[HTML5 / JavaScript ES6]:** Estrutura da aplicação frontend.
* **[Docker & Nginx (Alpine)]:** Containerização leve para implantação e hospedagem.

---

## 🎮 Controles de Navegação

A navegação foi projetada para ser simples e acessível a qualquer perfil de visitante:

| Ação | Comando (Mouse) | Comando (Mobile / Touch) |
| :--- | :--- | :--- |
| **Girar visão 360°** | Clique esquerdo + Arrastar | Um dedo + Arrastar |
| **Zoom (Aproximar/Afastar)** | Roda do mouse (*Scroll*) | Pinça com dois dedos |
| **Deslocar Câmera (Pan)** | Clique direito + Arrastar | Dois dedos + Arrastar |

---

## 🚀 Como Executar o Projeto

### 1. Execução Local Simples (Sem Servidor)
Como a aplicação utiliza CDNs para o Three.js e Tailwind CSS, basta abrir o arquivo diretamente no navegador:
1. Clone ou baixe este repositório.
2. Dê um duplo clique no arquivo `tour3d.html` (ou abra no navegador de sua preferência).

### 2. Execução via Docker (Local)
Para testar a aplicação em um ambiente de produção containerizado com Nginx:

```bash
# 1. Construir a imagem Docker
docker build -t tour3d-museu .

# 2. Rodar o container na porta 8080
docker run -d -p 8080:80 --name tour3d-app tour3d-museu
