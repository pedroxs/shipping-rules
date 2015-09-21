#!/bin/bash

mvn clean

for i in `seq 1 10000`;
do
#    echo $i
    sed -i "s/<version>0.1.[0-9]*/<version>0.1.$i/" pom.xml
    sed -i "s/Hello [0-9]*/Hello $i/" src/main/resources/com/netshoes/inka/rules/TestRule.drl
    mvn package
done

# Reset to 0
sed -i "s/<version>0.1.[0-9]*/<version>0.1.0/" pom.xml
sed -i "s/Hello [0-9]*/Hello 0/" src/main/resources/com/netshoes/inka/rules/TestRule.drl
mvn package
