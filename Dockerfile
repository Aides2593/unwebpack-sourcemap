FROM python:3.8-slim

WORKDIR /usr/unwebpack_sourcemap

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT [ "python", "./unwebpack_sourcemap.py"]

CMD [ "-h" ]