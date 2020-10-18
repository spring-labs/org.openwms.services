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

[![Build status](https://travis-ci.com/spring-labs/org.openwms.services.svg?branch=master)](https://travis-ci.com/spring-labs/org.openwms.services)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Join the chat at https://gitter.im/openwms/org.openwms](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/openwms/org.openwms?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
