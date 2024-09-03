FROM alpine:3.20
WORKDIR /usr/src/app
RUN apk add --update --no-cache bash \
    python3 && ln -sf python3 /usr/bin/python
RUN apk add --update --no-cache poetry

COPY pyproject.toml pyproject.toml 
RUN poetry install --no-root -vvv --sync
 
COPY src/sample_api  /usr/src/app

EXPOSE 3003-3000
ENTRYPOINT ["poetry", "run", "fastapi", "dev", "--host", "0.0.0.0", "--port", "3000", "main.py"]
# CMD poetry run fastapi dev --host 0.0.0.0 --port 3000 main.py 
