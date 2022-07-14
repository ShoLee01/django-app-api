# django-app-api

# Run all commands through Docker Compose
- docker-compose run --rm app sh -c "python manage.py collectstatic"

# Build proyect and create image of docker
- docker build .

# likewise you can builder through of
- docker-compose build

# como encontrar un problema en python
- docker-compose run --rm app sh -c "flake8"

# Testiar codigo
- docker-compose run --rm app sh -c "python manage.py test"

# Como crear nuetro proyecto en django
- docker-compose run --rm app sh -c "django-admin startproject app ."

# Se inicia los servicios de django en docker
- docker-compose up

# Comando para hacer migraciones para el proyecto por primera vez
- python manage.py makemigrations

# Comando para hacer migraciones generales
- python manage.py migrate

# Datos adicionales
- Django viene con una ORM, que es un mapeador relacional de objetos.
- Este mapeador sive como una capa de abstracción entre sus datos y su base de datos real.
- Cuando creas un modelo en Django, Django crea una tabla en la base de datos para almacenar sus datos.
- Entonces, cada modelo tiene una clase que representa una tabla en la base de datos.
