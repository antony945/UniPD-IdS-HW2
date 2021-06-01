#! /bin/sh

# Clone CK repository for code metrics
git clone https://github.com/mauricioaniche/ck.git

# Create JAR
cd ck/
mvn clean compile assembly:single

# Move JAR outside
cp target/*.jar ..

# Delete cloned repo
cd ..
rm -rf ck/