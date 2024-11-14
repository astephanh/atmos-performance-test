#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

END=400
STACK_DIR=./stacks/deploy
for i in $(seq 1 $END); do
  [ -d "$STACK_DIR/site-$i" ] || mkdir -p "$STACK_DIR/site-$i"
  cat > "$STACK_DIR/site-$i/dev.yaml" <<EOF
  vars:
    stage: site-$i

  components:
    terraform:
      hello:
        metadata:
          component: hello_world
EOF
done
