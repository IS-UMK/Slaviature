#!/usr/bin/env bash

set -euo pipefail

# Configuration directory and files
CONFIG_DIR="${HOME}/.config"
DEFAULT_FILE="${CONFIG_DIR}/keyLayoutDefault"
TMP_FILE="${TMPDIR:-/tmp}/keyLayoutInfo"

# Create the configuration directory if it doesn't exist
mkdir -p "${CONFIG_DIR}"

# Function for graphical notifications (if available)
notify() {
  if command -v notify-send &> /dev/null; then
    notify-send "KeyLayoutSwitch" "$1"
  fi
}

# Save the current layout as default if no default has been saved yet
if [[ ! -f "${DEFAULT_FILE}" ]]; then
  default_layout=$(setxkbmap -query | awk '/layout/ {print $2}')
  default_variant=$(setxkbmap -query | awk '/variant/ {print $2}')
  echo "${default_layout} ${default_variant}" > "${DEFAULT_FILE}"
fi

# Read the current layout and variant
current_layout=$(setxkbmap -query | awk '/layout/ {print $2}')
current_variant=$(setxkbmap -query | awk '/variant/ {print $2}')

# If the current layout is not 'slav', switch to 'slav' and save the previous one
if [[ "${current_layout}" != "slav" ]]; then
  echo "${current_layout} ${current_variant}" > "${TMP_FILE}"
  notify "Switching keyboard layout to slav"
  setxkbmap slav

# If 'slav' is active, attempt to restore the previous layout
else
  if [[ -s "${TMP_FILE}" ]]; then
    # Read the previous layout and variant from the temporary file
    read previous_layout previous_variant < "${TMP_FILE}"
    if [[ -z "${previous_layout}" ]]; then
      echo "Temporary file is empty or invalid — restoring default layout."
      notify "Temporary file is empty or invalid — restoring default layout."
      read default_layout default_variant < "${DEFAULT_FILE}"
      if [[ -z "${default_variant}" ]]; then
        setxkbmap -layout "${default_layout}"
      else
        setxkbmap -layout "${default_layout}" -variant "${default_variant}"
      fi
    else
      echo "Switching keyboard layout to ${previous_layout}"
      notify "Switching keyboard layout to ${previous_layout} ${previous_variant}"
      if [[ -z "${previous_variant}" ]]; then
        setxkbmap -layout "${previous_layout}"
      else
        setxkbmap -layout "${previous_layout}" -variant "${previous_variant}"
      fi
    fi

  # If the temporary file doesn't exist, restore the default layout
  else
    echo "No temporary file found — restoring default layout."
    notify "No temporary file found — restoring default layout."
    read default_layout default_variant < "${DEFAULT_FILE}"
    if [[ -z "${default_variant}" ]]; then
      setxkbmap -layout "${default_layout}"
    else
      setxkbmap -layout "${default_layout}" -variant "${default_variant}"
    fi
  fi
fi
