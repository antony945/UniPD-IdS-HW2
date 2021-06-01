#! /bin/sh

# Generate code metrics for each version of project
# java -jar *.jar project true 0 false
rm -rf codeMetrics/*
cd codeMetrics/

for dir in ../project/*/
do
    toCreate=${dir%*/}
    toCreate=${toCreate##*/}
    mkdir ${toCreate}
    cd ${toCreate}
    java -jar ../*.jar ${dir} true 0 false
    cd ..
done
