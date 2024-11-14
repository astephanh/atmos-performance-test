#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

END=400
STACK_DIR=./stacks/deploy
for i in $(seq 1 $END); do
  [ -d "$STACK_DIR/site-$i" ] || mkdir -p "$STACK_DIR/site-$i"
  cat > "$STACK_DIR/site-$i/dev.yaml" <<EOF
import:
  - catalog/components/hello_world/v1

settings:
  tenant: site
  stage: dev
  instance: $i

components:
  terraform:
    hello:
      metadata:
        component: '{{ .settings.version }}'
        inherits:
          - hello-world/_defaults
      vars:
        stage: '{{ .settings.stage }}'
EOF
done
