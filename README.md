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