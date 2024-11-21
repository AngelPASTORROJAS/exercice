# Utilisez l'image Alpine comme image de base
FROM alpine:latest
# Mettez à jour les paquets et installez NGINX
RUN apk update && apk add --no-cache nginx
# Copiez le fichier de configuration d'NGINX
COPY nginx.conf /etc/nginx/nginx.conf
# Copiez la page web (Hello World)
COPY index.html /usr/share/nginx/html/index.html
# Exposez le port 80 pour accéder à l'application NGINX
EXPOSE 80
# Commande par défaut pour démarrer NGINX en premier plan
CMD ["nginx", "-g", "daemon off;"]