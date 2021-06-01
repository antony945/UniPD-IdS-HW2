#! /bin/sh

# Create JAR
cd ck-ck-0.6.4/
mvn clean compile assembly:single

# Move JAR outside
cp target/*.jar ..

cd ..

# Create JAR
cd ck-ck-0.2.1/
mvn clean compile assembly:single

# Move JAR outside
cp target/*.jar ..

cd ..

