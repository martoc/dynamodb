[![Actions Status](https://github.com/martoc/dynamodb/workflows/Docker%20Image%20CI/badge.svg)](https://github.com/martoc/dynamodb/actions)

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
