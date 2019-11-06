# dynamodb

Container that starts dynamodb for local development

# docker-compose.yml
```
version: "2"
services:
  dynamodb:
    image: martoc/dynamodb:1.0.0
    ports:
      - "10500:10500"
```
