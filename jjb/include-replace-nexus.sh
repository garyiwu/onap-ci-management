#!/bin/bash -x

perl -p -i -e 's|https://nexus.onap.org|http://localhost:8081/nexus|g' `find ./ -name pom.xml`
git diff
