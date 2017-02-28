#!/bin/bash

set -e

cp -a proto-pipelines/. prepare-release/
cp -a java-app-manifest/. prepare-release/
cp -a java-app-release/. prepare-release/

cat <<EOF > prepare-release/secrets.json
{ $CONFIG }
EOF

ls -R
