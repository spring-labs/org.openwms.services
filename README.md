# org.openwms.services
A typical service discovery server like shown in all SpringBoot examples

![Build status][ci-image]

# Build and Run locally

```
$ ./mvnw package
$ java -jar target/openwms-services.jar 
```

# Release

```
$ mvn clean deploy -Prelease,gpg
```

# Resources

[![Build status](https://github.com/spring-labs/org.openwms.services/actions/workflows/master-build.yml/badge.svg)](https://github.com/spring-labs/org.openwms.services/actions/workflows/master-build.yml)
[![Quality](https://sonarcloud.io/api/project_badges/measure?project=org.openwms:org.openwms.services&metric=alert_status)](https://sonarcloud.io/dashboard?id=org.openwms:org.openwms.services)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Maven central](https://img.shields.io/maven-central/v/org.openwms/org.openwms.services)](https://search.maven.org/search?q=a:org.openwms.services)
[![Docker pulls](https://img.shields.io/docker/pulls/interface21/org.openwms.services)](https://hub.docker.com/r/interface21/org.openwms.services)
[![Join the chat at https://gitter.im/openwms/org.openwms](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/openwms/org.openwms?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
