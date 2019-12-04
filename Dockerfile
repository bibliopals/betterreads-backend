WORKDIR /app

COPY ./Pipfile .
COPY ./Pipfile.lock .
RUN pip install pipenv
RUN pipenv install

COPY . /app

EXPOSE 5000

ENV FLASK_APP=src
