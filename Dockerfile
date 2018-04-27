FROM rabbitmq:3.7-management

ADD rabbitmq_message_timestamp-20170830-3.7.x.ez /usr/lib/rabbitmq/plugins/rabbitmq_message_timestamp.ez


RUN rabbitmq-plugins enable --offline rabbitmq_stomp
RUN rabbitmq-plugins enable --offline rabbitmq_web_stomp
RUN rabbitmq-plugins enable --offline rabbitmq_message_timestamp
RUN rabbitmq-plugins enable --offline rabbitmq_peer_discovery_k8s

EXPOSE 15671 15672 15674 61613 61614
