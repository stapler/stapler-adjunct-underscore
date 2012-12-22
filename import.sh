#!/bin/bash -ex
tag=1.4.3
dst=src/main/resources/org/kohsuke/stapler/underscore
wget -O $dst/underscore.js     https://github.com/documentcloud/underscore/raw/$tag/underscore.js
wget -O $dst/underscore-min.js https://github.com/documentcloud/underscore/raw/$tag/underscore-min.js
mvn -B release:update-versions -DdevelopmentVersion=$tag-1-SNAPSHOT
