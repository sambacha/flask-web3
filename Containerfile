FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_web3 create-db
RUN flask_web3 populate-db
RUN flask_web3 add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_web3", "run"]
