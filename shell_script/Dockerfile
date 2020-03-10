FROM alpine
RUN mkdir /app
ADD test.sh /app/test.sh
ENV LOOP_CNT 5
WORKDIR /app
RUN chmod 777 test.sh
CMD ["/bin/sh", "test.sh"]
