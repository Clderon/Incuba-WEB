# 🚀 Incuba FIIS

**Plataforma de Gestión de Incubadora de Empresas - Facultad de Ingeniería Industrial y de Sistemas**

Una aplicación web completa desarrollada en Ruby on Rails para la gestión de programas de incubación, eventos, mentorías y participantes del ecosistema emprendedor universitario.

![Ruby](https://img.shields.io/badge/Ruby-3.3.8-red.svg)
![Rails](https://img.shields.io/badge/Rails-7.1.5-red.svg)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-blue.svg)
![Docker](https://img.shields.io/badge/Docker-Ready-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## 📋 Descripción

Incuba FIIS es una plataforma integral que facilita la gestión y administración de una incubadora de empresas universitaria. Ofrece funcionalidades para:

- **Gestión de Programas**: Preincubación, Incubación, Innovación y Aceleración
- **Sistema de Eventos**: Talleres, conferencias, networking y actividades formativas
- **Plataforma de Mentorías**: Conexión entre mentores expertos y emprendedores
- **Panel de Administración**: Gestión completa de usuarios, contenidos y reportes
- **Sistema de Inscripciones**: Registro automatizado para programas y eventos
- **Dashboard Multirol**: Interfaces específicas para administradores, mentores y participantes

## ✨ Características Principales

### 🎨 Interfaz Moderna
- **Dark Mode**: Modo oscuro completo con paleta Material Design 3
- **Responsive Design**: Adaptable a dispositivos móviles, tablets y escritorio
- **Glassmorphism**: Efectos visuales modernos con transparencias y desenfoques
- **Animaciones Fluidas**: Transiciones y efectos hover optimizados

### 🔐 Sistema de Autenticación
- Autenticación robusta con **Devise**
- Sistema de roles: Administrador, Mentor, Participante
- Perfiles personalizables con avatares
- Gestión de sesiones y seguridad

### 📊 Panel de Administración
- Dashboard con métricas y estadísticas
- Gestión completa de usuarios y roles
- Administración de programas y eventos
- Sistema de reportes exportables (PDF/Excel)
- Gestión de contenido y recursos

### 📱 Funcionalidades Avanzadas
- Sistema de notificaciones
- Exportación de datos (PDF, Excel)
- Formularios dinámicos de inscripción
- Gestión de patrocinadores y recursos
- Sistema de testimonios y casos de éxito

## 🛠️ Stack Tecnológico

### Backend
- **Ruby** 3.3.8
- **Ruby on Rails** 7.1.5
- **PostgreSQL** 15
- **Puma** Web Server

### Frontend
- **Hotwire** (Turbo + Stimulus)
- **Import Maps** para JavaScript
- **CSS3** con variables nativas y grid/flexbox
- **Responsive Design** con media queries

### Autenticación y Autorización
- **Devise** para autenticación
- Sistema de roles personalizado
- Gestión de permisos por módulos

### Generación de Documentos
- **Prawn** para generación de PDFs
- **Caxlsx** para exportación a Excel
- **Prawn-Table** para tablas en PDF

### Utilidades
- **Kaminari** para paginación
- **Bootsnap** para optimización de carga
- **Dotenv** para variables de entorno

## 🚀 Instalación y Configuración

### Prerrequisitos

- Ruby 3.3.8
- PostgreSQL 15+
- Node.js (para JavaScript)
- Git

### Instalación Local

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/tu-usuario/incuba-fiis.git
   cd incuba-fiis
   ```

2. **Instalar dependencias**
   ```bash
   bundle install
   ```

3. **Configurar la base de datos**
   ```bash
   # Copiar archivo de configuración
   cp config/database.yml.example config/database.yml
   
   # Crear y migrar la base de datos
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Configurar variables de entorno**
   ```bash
   cp .env.example .env
   # Editar .env con tus configuraciones
   ```

5. **Iniciar el servidor**
   ```bash
   rails server -p 3200
   ```

6. **Acceder a la aplicación**
   ```
   http://localhost:3200
   ```

### Instalación con Docker

1. **Clonar y ejecutar**
   ```bash
   git clone https://github.com/tu-usuario/incuba-fiis.git
   cd incuba-fiis
   docker-compose up --build
   ```

2. **Configurar la base de datos**
   ```bash
   docker-compose exec web rails db:create db:migrate db:seed
   ```

3. **Acceder a la aplicación**
   ```
   http://localhost:3200
   ```

## 📁 Estructura del Proyecto

```
incuba-fiis/
├── app/
│   ├── controllers/           # Controladores MVC
│   │   ├── admin/            # Controladores de administración
│   │   ├── mentor/           # Controladores de mentores
│   │   └── participante/     # Controladores de participantes
│   ├── models/               # Modelos ActiveRecord
│   ├── views/                # Vistas ERB
│   ├── javascript/           # JavaScript moderno
│   └── assets/
│       └── stylesheets/      # Hojas de estilo CSS
├── config/                   # Configuraciones Rails
├── db/                       # Migraciones y esquema
├── docker-compose.yml        # Configuración Docker
├── Dockerfile               # Imagen Docker
└── README.md               # Este archivo
```

## 🎯 Uso

### Roles de Usuario

#### 👨‍💼 Administrador
- Acceso completo al panel de administración
- Gestión de usuarios, programas y eventos
- Generación de reportes y estadísticas
- Configuración del sistema

#### 🧑‍🏫 Mentor
- Dashboard personalizado con mentorías
- Gestión de perfil profesional
- Acceso a recursos y materiales
- Seguimiento de emprendedores

#### 🎓 Participante
- Inscripción a programas y eventos
- Dashboard con progreso personal
- Acceso a recursos educativos
- Interacción con mentores

### Principales Funcionalidades

1. **Gestión de Programas**
   - `/programas` - Catálogo de programas disponibles
   - Inscripciones automatizadas
   - Seguimiento de participantes

2. **Sistema de Eventos**
   - `/eventos` - Calendario de eventos
   - Registro y confirmación
   - Gestión de capacidad

3. **Red de Mentores**
   - `/mentores` - Directorio de mentores
   - Perfiles especializados
   - Sistema de matching

4. **Centro de Contacto**
   - `/contact` - Formularios de contacto
   - Gestión de consultas
   - Información institucional

## 🔧 Configuración Avanzada

### Variables de Entorno

```env
# Base de datos
DATABASE_HOST=localhost
DATABASE_USERNAME=tu_usuario
DATABASE_PASSWORD=tu_password

# Rails
RAILS_ENV=development
SECRET_KEY_BASE=tu_clave_secreta

# Email (opcional)
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=tu_email@gmail.com
SMTP_PASSWORD=tu_password
```

### Personalización del Tema

El sistema incluye un dark mode completo que se puede activar mediante:

```javascript
// Activar dark mode
document.body.classList.add('dark');

// Desactivar dark mode
document.body.classList.remove('dark');
```

### Media Queries Responsive

La aplicación es completamente responsive con breakpoints:
- **Mobile**: ≤ 480px
- **Tablet**: ≤ 768px
- **Desktop**: > 768px

## 🧪 Testing

```bash
# Ejecutar todas las pruebas
rails test

# Pruebas específicas
rails test test/models/
rails test test/controllers/
rails test test/integration/

# Pruebas del sistema
rails test:system
```

## 📦 Despliegue

### Producción con Docker

```bash
# Construir imagen de producción
docker build -t incuba-fiis:production .

# Ejecutar en producción
docker run -p 3000:3000 -e RAILS_ENV=production incuba-fiis:production
```

### Heroku

```bash
# Crear aplicación
heroku create incuba-fiis-app

# Configurar PostgreSQL
heroku addons:create heroku-postgresql:hobby-dev

# Desplegar
git push heroku main

# Migrar base de datos
heroku run rails db:migrate
```

## 🤝 Contribución

1. Fork el proyecto
2. Crea tu rama de feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

### Estándares de Código

- Seguir las convenciones de Ruby y Rails
- Comentar código complejo
- Escribir pruebas para nuevas funcionalidades
- Mantener la cobertura de pruebas

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver `LICENSE` para más detalles.

## 📞 Contacto

**Incubadora FIIS**
- Email: incubadora@unmsm.edu.pe
- Website: https://incuba-fiis.edu.pe
- LinkedIn: @incubadora-fiis

## 🙏 Reconocimientos

- Facultad de Ingeniería Industrial y de Sistemas - UNMSM
- Comunidad Ruby on Rails
- Material Design Team (Google)
- Contribuidores del proyecto

---

**Desarrollado con ❤️ para la comunidad emprendedora universitaria**
