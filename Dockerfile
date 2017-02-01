FROM kapacitor:1.2.0

RUN apt-get update && \ 
	apt-get install python3 python-pip -y && \ 
	pip install protobuf json2html

EXPOSE 9092

VOLUME /var/lib/kapacitor

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["kapacitord"]