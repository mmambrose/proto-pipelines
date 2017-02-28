#!/bin/bash

set -e

cp -a proto-pipelines/. prepare-release/
cp -a java-app-manifest/. prepare-release/roles/files/
cp -a java-app-release/. prepare-release/roles/files/

cat <<EOF > prepare-release/secrets.json
{ $CONFIG }
EOF

ls -R
