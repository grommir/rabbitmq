FROM rabbitmq:3.9-management

ADD rabbitmq_message_timestamp-20171215-3.6.x.ez /usr/lib/rabbitmq/plugins

RUN rabbitmq-plugins enable --offline rabbitmq_stomp
RUN rabbitmq-plugins enable --offline rabbitmq_web_stomp
RUN rabbitmq-plugins enable --offline rabbitmq_message_timestamp

EXPOSE 15671 15672 15674 61613 61614
