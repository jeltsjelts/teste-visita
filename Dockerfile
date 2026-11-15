FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/
COPY arquitetura.html /usr/share/nginx/html/
COPY livro-visitas.html /usr/share/nginx/html/
COPY painel-gestao-98.html /usr/share/nginx/html/
COPY imagens/ /usr/share/nginx/html/imagens/
COPY audio/ /usr/share/nginx/html/audio/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
