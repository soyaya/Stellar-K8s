#!/usr/bin/env bash
set -euo pipefail

# shellcheck source=lib/repo.sh
source "$(dirname "$0")/lib/repo.sh"

# Create all necessary labels for Stellar Wave issues
# Uses || true to ignore errors if label already exists

echo "Creating labels..."

gh label create --repo "$REPO" rust --color DEA584 --description "Rust related" || true
gh label create --repo "$REPO" soroban --color 7F129E --description "Soroban smart contracts" || true
gh label create --repo "$REPO" observability --color C2E0C6 --description "Metrics and logs" || true
gh label create --repo "$REPO" ci --color 0075ca --description "CI/CD" || true
gh label create --repo "$REPO" security --color d73a4a --description "Security related" || true
gh label create --repo "$REPO" reliability --color d93f0b --description "Reliability and stability" || true
gh label create --repo "$REPO" architecture --color 0e8a16 --description "Architecture design" || true
gh label create --repo "$REPO" logic --color 5319e7 --description "Business logic" || true
gh label create --repo "$REPO" kubernetes --color 326ce5 --description "Kubernetes related" || true
gh label create --repo "$REPO" feature --color a2eeef --description "New feature" || true
gh label create --repo "$REPO" testing --color C2E0C6 --description "Tests" || true

echo "Labels created."
