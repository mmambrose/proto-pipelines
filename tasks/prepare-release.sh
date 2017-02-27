#!/bin/bash

set -e

cp -a proto-pipelines/. prepare-release/
cp -a java-app-manifest/. prepare-release/packer-code/roles/files/
cp -a java-app-release/. prepare-release/packer-code/roles/files/
cp -a java-app-release/. prepare-release/packer-code/roles/

cat <<EOF > prepare-release/secrets.json
{ $CONFIG }
EOF

ls -R
