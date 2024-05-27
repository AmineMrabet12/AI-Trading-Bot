FROM python:3.9.18-slim-bullseye
# FROM balenalib/amd64-python:3.9

WORKDIR /Train-code

COPY . /Train-code

RUN apt-get update && apt-get install -y pkg-config
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD [ "python", "-u", "model_train.py" ]