FROM openjdk:14-jdk-alpine

ENV RABBITMQ_HOST rabbitmq-cep-svc
ENV RABBITMQ_PASSWORD g7wavG!WZ&5cYXu@yeR6nnho97A7Sd
ENV RABBITMQ_USERNAME cep-handler
ENV EXCHANGE EXCHANGE

ENV REDIS_CEP_HOST redis-cep-svc
ENV REDIS_CEP_PASS 2KXcBK8#gUq3wAgsf77LheGkjWv@HhZE
ENV REDIS_CEP_PORT 6379

ENV CHECK_REDIS true

ENV BROKER Rabbitmq

ENV TD 1

RUN mkdir -p /bus-emulator/
ADD . /bus-emulator/
WORKDIR /bus-emulator/


CMD  7z x buses-tar/buses.7z.001 && java -jar bus-emulator-1.0.jar

