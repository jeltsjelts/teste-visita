FROM nginx:alpine

# Remove a página padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos HTML e a pasta de imagens para o servidor web
COPY index.html /usr/share/nginx/html/
COPY arquitetura.html /usr/share/nginx/html/
COPY imagens/ /usr/share/nginx/html/imagens/

# Expõe a porta 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
