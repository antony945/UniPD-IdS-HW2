#! /bin/sh

# Check if it exist the codeMetrics directory
if [ -d "./codeMetrics" ]
then
    echo "Already done."
    exit
fi

mkdir codeMetrics

# Generate code metrics for each version of project
for dir in ./project/*/
do
    toCreate=${dir%*/}
    toCreate=${toCreate##*/}
    java -jar *.jar ${dir} true 0 false
    mkdir codeMetrics/${toCreate}
    mv *.csv codeMetrics/${toCreate}
done
