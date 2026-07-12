# OpenWMS.org Registry Service
A typical discovery service used to register microservice instances that need to find each other, based on Netflix Eureka.

# Requirements
- Java 25
- Built on Spring Boot 4.1 and Spring Cloud 2025.1

# Build and Run locally
```
$ ./mvnw package
$ java -jar target/openwms-services-exec.jar 
```
The Eureka dashboard and API are served on port 8761 (`PORT`), the management endpoints (`health`, `info`, `loggers` and
`prometheus`) are served on port 8990 (`MGMTPORT`) so that Prometheus and Spring Boot Admin work out-of-the-box in a
development environment. In production, access to these endpoints must be protected by the gateway. The registry
registers itself in order to be discoverable by Prometheus and Spring Boot Admin.

# Spring Profiles
- `SECURED`: All endpoints require HTTP Basic authentication (`spring.security.user.name`/`spring.security.user.password`)
- `OTLP`: Traces are exported via OTLP to the collector configured with `owms.tracing.url` (default `http://localhost:4317`)

# Start as Docker container
```
$ docker run -p 8761:8761 -p 8990:8990 interface21/openwms-services:latest
```

# Release
```
$ ./mvnw release:prepare
$ ./mvnw release:perform
```

# Resources
[![Build status](https://github.com/spring-labs/org.openwms.services/actions/workflows/master-build.yml/badge.svg)](https://github.com/spring-labs/org.openwms.services/actions/workflows/master-build.yml)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Maven central](https://img.shields.io/maven-central/v/org.openwms/org.openwms.services)](https://search.maven.org/search?q=a:org.openwms.services)
[![Docker pulls](https://img.shields.io/docker/pulls/interface21/openwms-services)](https://hub.docker.com/r/interface21/openwms-services)
[![Join the chat at https://gitter.im/openwms/org.openwms](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/openwms/org.openwms?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
