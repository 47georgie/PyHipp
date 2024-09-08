#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo
echo "#==========================================================="
echo "Start Times"
for file in *.out; do
  if [[ -f "$file" ]]; then
    echo "==> $file <=="
    head -n 1 "$file"
    echo
  fi
done

echo
echo "End Times"
for file in *.out; do
  if [[ -f "$file" ]]; then
    echo "==> $file <=="
    tail -n 5 "$file"
    echo
  fi
done
echo "#==========================================================="

