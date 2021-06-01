#! /bin/sh

# Remove old code metrics
rm -rf codeMetrics/
mkdir codeMetrics/

# Generate code metrics for each version of project
for dir in ./project/*/
do
    toCreate=${dir%*/}
    toCreate=${toCreate##*/}
    java -jar ck-0.6.4-jar-with-dependencies.jar ${dir} true 0 false
    java -jar ck-0.2.1-jar-with-dependencies.jar ${dir} classOld.csv
    mkdir codeMetrics/${toCreate}
    mv *.csv codeMetrics/${toCreate}
done

# Run editAll and compareAll scripts
python3 editAll.py
python3 compareAll.py