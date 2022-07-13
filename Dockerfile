FROM python:3.9-alpine3.13
LABEL maintainer="django-docker-app"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000
# La primera linea crea un nuevo entorno virtual que usaremos para almacenar nuestras dependecias
# La segunda linea especificamos la ruta de nuestros entorno virtual, asi como actualiza el adminitrador de paquetes de python
# La tercera linea instalamos la lista de requisitos que hemos creado en el archivo requirements.txt
# La cuarta elimina el archivo temporal que hemos creado, para que la imagen sea mas limpia
# La parte siguiente crea un usuario sin contraseña y sin home para que la información no se comprometa a ataques de hackers.
# El ENV actuliza la variable de entorno dentro de la imagen y actualizamos la variable de entorno de la ruta, es esta la que se crea en linux
ARG DEV=false
RUN python -m venv /py && \ 
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    if [ "$DEV" = "true" ]; \
        then /py/bin/pip install -r /tmp/requirements.dev.txt ; \
    fi && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user

ENV PATH="/py/bin:$PATH"

USER django-user