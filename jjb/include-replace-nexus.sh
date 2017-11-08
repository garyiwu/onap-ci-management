#!/bin/bash -x

perl -p -i -e 's|https://nexus.onap.org|http://localhost:8081/nexus|g' $(find ./ -name pom.xml)
perl -p -i -e 's|<nexusUrl>.*</nexusUrl>|<nexusUrl>http://localhost:8081/nexus</nexusUrl>|g' $(find ./ -name pom.xml)
git diff
