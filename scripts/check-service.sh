#!/usr/bin/env bash
set -euo pipefail

SERVICE_NAME="${1:-}"

if [ -z "$SERVICE_NAME" ]; then
  echo "ERROR: Service name not provided"
  exit 2
fi

if systemctl is-active --quiet "$SERVICE_NAME"; then
  echo "OK: $SERVICE_NAME is running"
  exit 0
else
  echo "CRITICAL: $SERVICE_NAME is NOT running"
  exit 1
fi
