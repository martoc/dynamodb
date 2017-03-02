FROM java:openjdk-8-jdk

RUN wget https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz
RUN mkdir dynamodb_local_latest
RUN tar xvzf dynamodb_local_latest.tar.gz -C ./dynamodb_local_latest && rm -f dynamodb_local_latest.tar.gz && \
    rm dynamodb_local_latest/DynamoDBLocal_lib/*win32* && \
    rm dynamodb_local_latest/DynamoDBLocal_lib/*osx*

EXPOSE 10500

CMD ["java", "-Djava.library.path=./dynamodb_local_latest/DynamoDBLocal_lib", "-jar", "./dynamodb_local_latest/DynamoDBLocal.jar", "-inMemory", "-port", "10500"]
