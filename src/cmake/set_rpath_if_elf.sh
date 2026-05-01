#!/usr/bin/env bash
set -euo pipefail

rpath_value=$1
target_file=$2

case "$(file -b "$target_file")" in
    ELF*)
        patchelf --set-rpath "$rpath_value" "$target_file"
        echo "patched rpath of: $target_file"
        ;;
esac
