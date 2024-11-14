# Performance // many stacks with many imports

<!-- vim-markdown-toc Marked -->

* [Overview](#overview)
* [Prepare execution](#prepare-execution)
* [Execution](#execution)

<!-- vim-markdown-toc -->

## Overview

There is a huge performance impact on Atmos when `imports` are used. This
directory simply creates a lot of stacks with many imports per stack.

## Prepare execution

The scripts will create `400` stacks with `25` imports each. The terraform
module is a simple hello world module.

```sh
./scripts/create_catalog.sh
./scripts/create_stacks.sh
```

## Execution

simply run:

```sh
time atmos list stacks
time atmos list components -s site-dev-1
```

<!-- vim: set fenc=utf-8 spell spl=en: -->
