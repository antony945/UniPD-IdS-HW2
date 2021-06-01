#! /bin/sh

# Check if it exist another JAR file in directory
if [ -f *.jar ]
then
    echo "No need to create another JAR file."
    exit
fi

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