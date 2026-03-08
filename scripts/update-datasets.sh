#!/usr/bin/env bash
# Update all Bamwor Open Data CSVs from the Bamwor API
# Usage: ./scripts/update-datasets.sh

set -euo pipefail

YEAR=$(date +%Y)
BASE_URL="https://bamwor.com/api/csv"
OUT_DIR="$(dirname "$0")/../datasets"

SLUGS=(
  population
  area
  gdp
  gdp-per-capita
  life-expectancy
  birth-rate
  death-rate
  literacy-rate
  unemployment
  inflation
  internet-users
  military-spending
  coastline
  highest-elevation
)

echo "Updating Bamwor Open Data datasets (${YEAR})..."
echo ""

for slug in "${SLUGS[@]}"; do
  filename="countries-by-${slug}-${YEAR}-bamwor.csv"
  echo "  Downloading ${slug}..."
  curl -sL "${BASE_URL}/${slug}" -o "${OUT_DIR}/${filename}"
done

echo ""
echo "Done. ${#SLUGS[@]} datasets updated in ${OUT_DIR}/"
echo "Run 'git add datasets/ && git commit -m \"Update datasets ${YEAR}\"' to commit."
