#!/bin/bash

# Java 11 required

# Create a self signed certificate for "transform-core-aio" Docker Container
keytool -genkey -alias transform -keyalg RSA -keysize 2048  \
-validity 3650 -storetype PKCS12 -keystore transform.p12 \
-dname "CN=transform-core-aio"  \
-keypass transform -storepass transform

# Export the public part of the certificate to be added to Alfresco Repository JRE truststore
keytool -export -alias transform -keystore transform.p12 -file transform.cert -storepass transform
cp transform.cert ../alfresco
