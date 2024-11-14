#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

END=100
STACK_DIR=./stacks/catalog/components
COMPONENT_NAME=hello-world

for i in $(seq 1 $END); do
  [ -d "$STACK_DIR/$COMPONENT_NAME-$i" ] || mkdir -p "$STACK_DIR/$COMPONENT_NAME-$i"
  cat > "$STACK_DIR/$COMPONENT_NAME-$i/v1.yaml" <<EOF
components:
  terraform:
    hello-world-$i/_defaults:
      metadata:
        type: abstract
      settings:
        version: hello-world/v1
      vars:
        stage: '{{ .settings.stage }}-{{ .settings.instance }}'
EOF
done
