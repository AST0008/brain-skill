#!/usr/bin/env bash
# Copy assets/vault into a destination. Existing files are left in place.
set -euo pipefail

if [[ $# -ne 1 || -z "${1}" ]]; then
  echo "usage: init-vault.sh <destination-directory>" >&2
  exit 2
fi

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
src="$(cd "${script_dir}/../assets/vault" && pwd)"
mkdir -p "${1}"
dest="$(cd "${1}" && pwd)"

if [[ "${dest}" == "${src}" || "${dest}" == "${src}"/* ]]; then
  echo "refusing to copy the vault onto the skill source" >&2
  exit 1
fi

while IFS= read -r -d '' file; do
  rel="${file#"${src}/"}"
  target="${dest}/${rel}"
  mkdir -p "$(dirname "${target}")"
  if [[ -e "${target}" ]]; then
    printf 'keep %s\n' "${rel}"
  else
    cp -a "${file}" "${target}"
    printf 'add  %s\n' "${rel}"
  fi
done < <(find "${src}" -type f -print0)
