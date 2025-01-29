# Mi Primera Página Web

> Una página web interactiva con funcionalidad de búsqueda integrada usando Perl. 🌍💻

## 📌 Características
✅ Búsqueda en Google (normal, avanzada e imágenes) mediante Perl CGI.  
✅ Interfaz moderna y responsiva con HTML y CSS.  
✅ Implementación en Docker para fácil despliegue.  
✅ Código modular y bien estructurado.  

## 🚀 Instalación y Uso
### 1️⃣ **Clonar el repositorio**
```bash
 git clone https://github.com/RominaCamargo/Mi-primera-pagina-web.git
 cd Mi-primera-pagina-web
```
### 2️⃣ **Ejecutar con Docker**
```bash
docker build -t mi-pagina-web .
docker run -p 8080:80 mi-pagina-web
```
Luego, abre en tu navegador: `http://localhost:8080`

### 3️⃣ **Ejecutar manualmente (sin Docker)**
Asegúrate de tener un servidor web con soporte para CGI, como Apache con mod_cgi habilitado.
1. Copia los archivos en el directorio del servidor.
2. Configura los permisos para los scripts CGI:
```bash
chmod +x cgi-bin/busqueda.pl
```
3. Accede desde el navegador a la página principal.

## 🖥 Capturas de Pantalla
![image](https://github.com/user-attachments/assets/8632fda6-65c3-4cfa-886c-5f8da6a3c770)

## 🛠 Tecnologías Usadas
- **Frontend:** HTML, CSS
- **Backend:** Perl (CGI)
- **Infraestructura:** Docker


¡Gracias por visitar este proyecto! 😊✨

