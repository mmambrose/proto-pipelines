#!/bin/bash

set -e

cp -a proto-pipelines/. prepare-release/

cat <<EOF > prepare-release/secrets.json
{ $CONFIG }
EOF
