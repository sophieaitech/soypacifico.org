# ==========================================================
# Dockerfile: Corporación Soy Pacífico - Landing Page
# Optimizado para GitHub Actions y despliegue en Easypanel
# ==========================================================

FROM nginx:alpine

LABEL maintainer="Corporación Soy Pacífico <contacto@soypacifico.org>"
LABEL description="Landing Page oficial de la Corporación Soy Pacífico"

# Limpiar configuración por defecto
RUN rm -rf /etc/nginx/conf.d/default.conf \
    && rm -rf /usr/share/nginx/html/*

# Copiar configuración personalizada optimizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar archivos estáticos del proyecto
COPY . /usr/share/nginx/html/

# Asegurar permisos de lectura para el servidor web
RUN chmod -R 755 /usr/share/nginx/html

# Exponer el puerto estándar HTTP (requerido por Easypanel y Traefik)
EXPOSE 80

# Healthcheck para que Easypanel y Docker supervisen la salud del contenedor
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

# Comando por defecto para correr Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
