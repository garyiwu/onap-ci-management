#!/bin/bash -x

perl -p -i -e 's|https://nexus.onap.org|http://localhost:8081/nexus|g' $(find ./ -name pom.xml)
perl -p -i -e 's|<nexusUrl>.*</nexusUrl>|<nexusUrl>http://localhost:8081/nexus</nexusUrl>|g' $(find ./ -name pom.xml)
perl -p -i -e 's|nexus3.onap.org|localhost|g' $(find ./ -name pom.xml)
perl -p -i -e 's|nexus3.onap.org|localhost|g' $(find ./ -name "*.sh")
perl -p -i -e 's|docker push|echo docker push|g' $(find ./ -name "*.sh")
git diff
