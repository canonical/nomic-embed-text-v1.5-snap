#!/bin/bash
# CI entrypoint for model preparation.
# Wraps the Makefile target(s) invoked by the reusable build workflow.
# This snap ships a single non-sharded GGUF, so no split step is required.
set -euo pipefail

make download-models
