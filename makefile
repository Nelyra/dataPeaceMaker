all: kafka-start

kafka-start:
	cd kafka-4.1.0-src; \
	KAFKA_CLUSTER_ID="$(bin/kafka-storage.sh random-uuid)"; \
	bin/kafka-storage.sh format --standalone -t $KAFKA_CLUSTER_ID -c config/server.properties; \
	bin/kafka-server-start.sh config/server.properties;