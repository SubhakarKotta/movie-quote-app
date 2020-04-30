#!/usr/bin/env bash

# Create image of frontend
cd ./movie-quote-consumer/
npm install
npm run build
npm run docker
cd ..

# Create image of backend
cd ./movie-quote-service/
./mvnw clean package
cd ..


docker push subhakarkotta/movie-quote-service:0.0.3
docker push subhakarkotta/movie-quote-consumer:0.0.3