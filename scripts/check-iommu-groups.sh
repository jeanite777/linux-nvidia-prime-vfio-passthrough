#!/bin/bash
for g in /sys/kernel/iommu_groups/*; do
    echo "Group ${g##*/}:"
    for d in $g/devices/*; do
        lspci -nns ${d##*/}
    done
    echo
done