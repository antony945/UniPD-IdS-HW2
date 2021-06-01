#! /bin/sh

# Remove old code metrics
rm -rf codeMetrics/
mkdir codeMetrics/

# Generate code metrics for each version of project
for dir in ./project/*/
do
    toCreate=${dir%*/}
    toCreate=${toCreate##*/}
    java -jar *.jar ${dir} true 0 false
    mkdir codeMetrics/${toCreate}
    mv *.csv codeMetrics/${toCreate}
done

# Edit csv files
python editAll.py