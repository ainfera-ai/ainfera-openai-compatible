#!/usr/bin/env bash
# Pure curl — proves Ainfera works without ANY client library.
#
# Usage:
#   AINFERA_API_KEY=ai_infera_... ./curl-example.sh

set -euo pipefail

if [[ -z "${AINFERA_API_KEY:-}" ]]; then
  echo "error: AINFERA_API_KEY not set" >&2
  echo "get a free key at https://app.ainfera.ai/signup" >&2
  exit 1
fi

curl -sS https://api.ainfera.ai/v1/chat/completions \
  -H "Authorization: Bearer ${AINFERA_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "claude-opus-4-7",
    "messages": [{"role": "user", "content": "Say hello in one sentence."}]
  }'

echo
echo
echo "Audit URL: response includes x-ainfera-audit-url header. Run with -i to see headers."
