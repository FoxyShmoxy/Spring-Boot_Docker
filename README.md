# Hello Spring Docker Example

This repository contains a simple Java project that demonstrates how to build and run a Spring application within a Docker container using a multistage build approach. 
The project exposes an endpoint `/hello` on port 8080, which can be accessed via a web browser after the Docker container is up and running.

## Prerequisites

- **Docker**: Make sure you have Docker installed and run on your machine.

## Getting Started

Follow these steps to build and run the project in a Docker container.

1. Build image:

   ```sh
    docker build -t hello-spring .

2. Run the Docker container:

   ```sh
   docker run -p 8080:8080 hello-spring

3. Access the Endpoint

   Open your web browser and navigate to http://localhost:8080/hello. You should see a simple greeting message from the Spring application.
