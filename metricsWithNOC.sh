#! /bin/sh

# Remove old code metrics
rm -rf codeMetricsOld/
mkdir codeMetricsOld/

# Generate code metrics for each version of project
for dir in ./project/*/
do
    toCreate=${dir%*/}
    toCreate=${toCreate##*/}
    java -jar ck-0.2.1-jar-with-dependencies.jar ${dir} classOld.csv
    mkdir codeMetricsOld/${toCreate}
    mv classOld.csv codeMetricsOld/${toCreate}
done
