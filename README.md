# Corporación Soy Pacífico — Landing Page Oficial

Sitio web oficial de la **Corporación Soy Pacífico**, plataforma sociocultural y estratégica para el fortalecimiento comunitario, ambiental, cultural y deportivo en el litoral Pacífico colombiano.

---

## 🐳 Estructura de Dockerización

El proyecto está 100% dockerizado y listo para producción usando una imagen ultraligera de **Nginx sobre Alpine Linux** (~25MB), optimizada para alto rendimiento y despliegue automatizado en **Easypanel**.

* **`Dockerfile`**: Configura la imagen base de Nginx, copia los activos y expone el puerto estándar HTTP 80 con healthcheck automático.
* **`nginx.conf`**: Servidor web con compresión Gzip nivel 6, cabeceras de seguridad HTTP, control de caché para activos estáticos y manejo de SPA fallback.
* **`.dockerignore`**: Excluye archivos pesados no productivos para acelerar la construcción de la imagen.
* **`docker-compose.yml`**: Orquestación lista para pruebas locales o despliegue en un clic.

---

## 🚀 Paso 1: Subir a GitHub

Abre tu terminal en la carpeta del proyecto y ejecuta los siguientes comandos:

```bash
# 1. Inicializar el repositorio Git (si aún no está inicializado)
git init

# 2. Agregar todos los archivos
git add .

# 3. Crear el primer commit
git commit -m "feat: landing page corporación soy pacífico 100% dockerizada"

# 4. Cambiar la rama principal a main
git branch -M main

# 5. Conectar con tu repositorio remoto de GitHub (reemplaza con tu URL)
git remote add origin https://github.com/TU_USUARIO/TU_REPOSITORIO.git

# 6. Subir el proyecto a GitHub
git push -u origin main
```

---

## ☁️ Paso 2: Desplegar en Easypanel

Easypanel es compatible de forma nativa con Dockerfiles de GitHub. Sigue estos sencillos pasos:

1. **Ingresa a tu panel de Easypanel:**
   * Entra a tu instancia (ejemplo: `https://panel.tudominio.com`).
2. **Crear o seleccionar un Proyecto:**
   * Haz clic en tu proyecto o crea uno nuevo llamado `soy-pacifico`.
3. **Agregar un nuevo Servicio:**
   * Haz clic en **+ Service** -> Selecciona **App**.
4. **Configurar la Fuente (Source):**
   * En la pestaña **General**, bajo la sección **Source**, elige **GitHub**.
   * Conecta tu cuenta de GitHub y selecciona el repositorio `TU_USUARIO/TU_REPOSITORIO`.
   * En **Branch**, coloca `main`.
5. **Método de Construcción (Build):**
   * En **Build Type**, selecciona **Dockerfile** (Easypanel detectará automáticamente el archivo `Dockerfile` en la raíz).
6. **Puertos y Dominios:**
   * En **Ports**, confirma que el puerto del contenedor sea `80`.
   * En **Domains**, haz clic en **+ Add Domain**, escribe tu dominio (por ejemplo `soypacifico.org` o `www.soypacifico.org`).
   * Easypanel generará automáticamente el **certificado SSL gratuito de Let's Encrypt** mediante Traefik.
7. **Desplegar:**
   * Haz clic en el botón superior **Deploy**.
   * En unos segundos verás el estado en verde **Running** y tu landing page estará en vivo.

---

## 💻 Prueba Local con Docker (Opcional)

Si tienes Docker Desktop instalado y corriendo en tu computadora:

```bash
# Iniciar el contenedor en segundo plano
docker compose up -d

# Ver el sitio en tu navegador en:
http://localhost:80

# Detener el contenedor
docker compose down
```

---

## 📞 Soporte
* **WhatsApp de contacto:** +57 315 9636154
* **Ubicación:** Buenaventura · Pacífico colombiano
