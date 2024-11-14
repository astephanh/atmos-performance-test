#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

END=400
IMPORT_END=10
STACK_DIR=./stacks/deploy
for i in $(seq 1 $END); do
  [ -d "$STACK_DIR/site-$i" ] || mkdir -p "$STACK_DIR/site-$i"

  # import header
  echo "import:" > "$STACK_DIR/site-$i/dev.yaml"
  for j in $(seq 1 $IMPORT_END); do
    echo "  - catalog/components/hello-world-$j/v1" >> "$STACK_DIR/site-$i/dev.yaml"
  done

  # prepare components
  cat >> "$STACK_DIR/site-$i/dev.yaml" <<EOF

settings:
  tenant: site
  stage: dev
  instance: $i

components:
  terraform:
EOF

  # insert components
  for j in $(seq 1 $IMPORT_END); do
  cat >> "$STACK_DIR/site-$i/dev.yaml" <<EOF
    hello/$j:
      metadata:
        component: '{{ .settings.version }}'
        inherits:
          - hello-world-$j/_defaults
EOF
  done
done
